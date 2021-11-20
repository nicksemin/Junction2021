//
//  Speaker.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import Foundation

class Speaker: ObservableObject, Equatable {
    static func == (lhs: Speaker, rhs: Speaker) -> Bool {
        lhs.firstName == rhs.firstName
    }
    
    let firstName: String
    let lastName: String
    let position: String
    let company: String
    var isActive: Bool = true
    var isFinished: Bool = false
    
    init(firstName: String,
         lastName: String,
         position: String,
         company: String,
         isActive: Bool = true,
         isFinished: Bool = false) {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.company = company
    }
}

extension Speaker {

    static var data: [Speaker] {
        [
            .init(firstName: "Alex", lastName: "", position: "iOS", company: "Sber", isActive: true),
            .init(firstName: "Ilia", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Nick", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Vlada", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Zilia", lastName: "", position: "iOS", company: "Sber")
        ]
    }
}
