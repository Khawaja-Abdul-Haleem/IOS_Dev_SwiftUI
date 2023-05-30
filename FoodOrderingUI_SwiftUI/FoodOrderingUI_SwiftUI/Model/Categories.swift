//
//  Categories.swift
//  FoodOrderingUI_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import Foundation
import SwiftUI


struct Category: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
    
    
}

var categories = [
    Category(image: "burger", title: "Burger"),
    Category(image: "pizza", title: "Pizza"),
    Category(image: "wings", title: "Wings"),
    Category(image: "pasta", title: "Pasta")
]
