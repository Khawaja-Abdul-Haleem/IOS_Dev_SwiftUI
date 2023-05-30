//
//  Popular.swift
//  FoodOrderingUI_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import Foundation
import SwiftUI

struct Popular: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var image: String
    var description: String
    var price: String
    
    
}

var popularItems = [
  Popular(title: "Burger", image: "burger", description: "Speciall", price: "200"),
  Popular(title: "Pizza-Large", image: "pizza", description: "BBQ-Special flavor", price: "1500"),
  Popular(title: "Wings", image: "wings", description: "Chicken Wings", price: "800"),
  Popular(title: "Pasta", image: "pasta", description: "Special Pasta", price: "1000")
  
]
