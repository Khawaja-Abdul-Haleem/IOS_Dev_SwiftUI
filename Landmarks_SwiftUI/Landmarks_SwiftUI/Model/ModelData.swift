//
//  ModelData.swift
//  Landmarks_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import Foundation
import SwiftUI

var landmarks: [Landmark] = load("landmarkData.json")
func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't load \(filename) in bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) in bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't load \(filename) in bundle")
    }
}
