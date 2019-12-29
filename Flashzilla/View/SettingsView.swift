//
//  SettingsView.swift
//  Flashzilla
//
//  Created by Mario Alberto Barragán Espinosa on 29/12/19.
//  Copyright © 2019 Mario Alberto Barragán Espinosa. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var shouldRetryCards: Bool
    
    var body: some View {
        NavigationView {
            Section {
                VStack {
                    Toggle(isOn: $shouldRetryCards) {
                        Text("Retry cards")
                    }.padding()
                }
            }
            .navigationBarTitle("Settings")
            .navigationBarItems(trailing: Button("Done", action: dismiss))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(shouldRetryCards: .constant(false))
    }
}
