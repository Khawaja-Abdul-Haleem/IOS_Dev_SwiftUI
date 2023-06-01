//
//  User.swift
//  SwipeableCards_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 01/06/2023.
//

import Foundation

struct User: Hashable, CustomStringConvertible {
    var id: Int
    
    let firstName: String
    let lastName: String
    let age: Int
    let mutualFriends: Int
    let imageName: String
    let occupation: String
    
    var description: String {
        return "\(firstName), id: \(id)"
    }
}
