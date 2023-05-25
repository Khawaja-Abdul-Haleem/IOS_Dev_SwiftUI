//
//  Post.swift
//  Carousel_Slider_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import Foundation

//post model here

struct Post: Identifiable {
    var id = UUID().uuidString
    var postImage: String
}
