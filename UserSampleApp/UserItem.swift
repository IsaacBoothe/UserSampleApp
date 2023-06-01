//
//  UserItem.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 5/30/23.
//

import Foundation

class UserItem: Identifiable {
    var id = UUID()
    var email: String
    var first: String = ""
    var last: String = ""
    var username: String = ""
    var gender: String = ""
    var city: String = ""
    var state: String = ""
    var country: String = ""
    var thumbnail: String = ""
    var large: String = ""
    var cell: String = ""
    
    init(email: String, first: String, last: String, username: String, gender: String, city: String, state: String, country: String, thumbnail: String, large: String, cell: String){
        self.email = email
        self.first = first
        self.last = last
        self.username = username
        self.gender = gender
        self.city = city
        self.state = state
        self.country = country
        self.thumbnail = thumbnail
        self.large = large
        self.cell = cell
    }
}
