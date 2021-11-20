//
//  Speaker.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import Foundation

var attendees: [String] = Speaker.data.map { return $0.firstName }

struct Speaker: Identifiable {
    let id: UUID = UUID()
    let firstName: String
    let lastName: String
    let position: String
    let company: String
    var isActive: Bool = false
    var timeRemaining: Float = 0
    
    init(id: UUID = UUID(),
         firstName: String,
         lastName: String,
         position: String,
         company: String,
         isActive: Bool = false,
         timeRemaining: Float? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.company = company
    }
}

extension Speaker {

    static var data: [Speaker] {
        [
            .init(firstName: "Alex", lastName: "Loh", position: "iOS", company: "Sber", isActive: true, timeRemaining: 10.0),
            .init(firstName: "Ilia", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Nick", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Vlada", lastName: "", position: "iOS", company: "Sber"),
            .init(firstName: "Zilia", lastName: "", position: "iOS", company: "Sber")
        ]
    }
}

extension Speaker {
    struct Data {
        let firstName: String
        let lastName: String
        let position: String
        let company: String
        var isActive: Bool = false
        var timeRemaining: Float = 0
    }

    var data: Data {
        return .init(firstName: "Alex", lastName: "Loh", position: "iOS", company: "Sber", isActive: true, timeRemaining: 10)
    }

    mutating func update(from data: Data) {
        isActive = data.isActive
        timeRemaining = data.timeRemaining
    }
}
