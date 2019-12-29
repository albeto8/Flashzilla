//
//  Card.swift
//  Flashzilla
//
//  Created by Mario Alberto Barragán Espinosa on 26/12/19.
//  Copyright © 2019 Mario Alberto Barragán Espinosa. All rights reserved.
//

import Foundation

struct Card: Codable {
    let prompt: String
    let answer: String

    static var example: Card {
        return Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
    }
}
