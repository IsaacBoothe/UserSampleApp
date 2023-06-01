//
//  ApiResponse.swift
//  
//
//  Created by Isaac Boothe on 5/30/23.
//

import Foundation

struct ApiResponse: Codable {
    let results: [Results]
}

struct Results: Codable {
    let email: String
    let gender: String
    let cell: String
    let name: Name
    let location: Location
    let picture:  Picture
    let login: Login
}

struct Name: Codable {
    let first: String
    let last: String
}

struct Location: Codable{
    let city: String
    let state: String
    let country: String
}

struct Picture: Codable{
    let thumbnail: String
    let large: String
}

struct Login: Codable{
    let username: String
}

