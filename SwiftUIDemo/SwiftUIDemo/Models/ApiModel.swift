//
//  ApiModel.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import Foundation
import SwiftUI

struct APIStruct: Codable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}

class APIClass {
    func getPosts(completion: @escaping ([APIStruct]) -> ()) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
        
        URLSession.shared.dataTask(with: url!) { (data, _, _) in
            let myPosts = try! JSONDecoder().decode([APIStruct].self, from: data!)
            DispatchQueue.main.async {
                completion(myPosts)
            }
            
        }.resume()
        
        
    }
}
