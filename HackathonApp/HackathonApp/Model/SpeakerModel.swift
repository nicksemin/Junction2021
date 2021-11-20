//
//  Speaker.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import Foundation

struct Speaker {

    let firstName: String
    let secondName: String
    var isActive: Bool
    var timeRemaining: Float?
}

extension Speaker {

    static var data: [Speaker] = [
        .init(firstName: "Alex", secondName: "Loh", isActive: true),
        .init(firstName: "Ilia", secondName: "", isActive: false),
        .init(firstName: "Nick", secondName: "", isActive: false),
        .init(firstName: "Vlada", secondName: "", isActive: false),
        .init(firstName: "zilia", secondName: "", isActive: false)
    ]
}
