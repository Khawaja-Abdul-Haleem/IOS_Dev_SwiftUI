//
//  Furniture.swift
//  FurnitureAPP_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import Foundation

struct Furniture : Identifiable, Hashable {
    var id : Int
    var image: String
    var title: String
    var price: String
    
}

var furnitures = [
    [Furniture(id: 0, image: "chairYellow", title: "Wood Frame", price: "Rs 1000"),
     Furniture(id: 1, image: "frame", title: "Yellow Chair", price: "Rs 5000")],
    
    [Furniture(id: 2, image: "modernChair", title: "Modern Chair", price: "Rs 5000"),
     Furniture(id: 3, image: "ikeaingolf", title: "ikea ingolf", price: "Rs 2000")],
    
    [Furniture(id: 4, image: "bed", title: "Bed", price: "Rs 70000"),
     Furniture(id: 5, image: "dining", title: "Modern Dining Table", price: "Rs 30000")]
    
    
    

]
