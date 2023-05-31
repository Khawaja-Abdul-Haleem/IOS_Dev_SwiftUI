//
//  CategoryRow.swift
//  ProtoType_SWIFTUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI

struct CategoryRow: View {
    let geometry: GeometryProxy
    let categoryNameLeft: String // Add parameter for categoryNameLeft
    let categoryNameRight: String
    
    var body: some View {
        HStack {
            NavigationLink(destination: Category(categoryName: categoryNameLeft)) { // Pass the categoryName to Category()
                CategoryCard(geometry: geometry, categoryName: categoryNameLeft)
            }
            NavigationLink(destination: Category(categoryName: categoryNameRight)) { // Pass the categoryName to Category()
                CategoryCard(geometry: geometry, categoryName: categoryNameRight)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Category: View {
    let categoryName: String
    var body: some View {
        VStack {
            Text("")
        }
        .navigationBarTitle(categoryName)
    }
}
