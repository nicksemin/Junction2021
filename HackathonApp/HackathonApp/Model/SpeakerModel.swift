//
//  Speaker.swift
//  HackathonApp
//
//  Created by Ilia Ershov on 20.11.2021.
//

import Foundation
import SwiftUI

class Speaker: ObservableObject, Equatable {
    static func == (lhs: Speaker, rhs: Speaker) -> Bool {
        lhs.firstName == rhs.firstName
    }
    
    let firstName: String
    let lastName: String
    let position: String
    let company: String
    var imageName: String
    var isActive: Bool = true
    
    init(firstName: String,
         lastName: String,
         position: String,
         company: String,
         imageName: String,
         isActive: Bool = true) {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.company = company
        self.imageName = imageName
    }
}

extension Speaker {

    static var data: [Speaker] {
        [
            .init(firstName: "John", lastName: "", position: "Designer", company: "Microsoft", imageName: "speaker1", isActive: true),
            .init(firstName: "Oscar", lastName: "", position: "Project Manger", company: "IBM", imageName: "speaker2"),
            .init(firstName: "Anna", lastName: "", position: "UI/UX Designer", company: "Huawei", imageName: "speaker3"),
            .init(firstName: "Emilia", lastName: "", position: "Front-end Developer", company: "Smartly.io", imageName: "speaker4"),
            .init(firstName: "Brian", lastName: "", position: "iOS Developer", company: "Google", imageName: "speaker5")
        ]
    }
}
