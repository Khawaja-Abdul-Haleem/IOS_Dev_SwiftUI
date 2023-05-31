//
//  Categories.swift
//  ProtoType_SWIFTUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI


struct Categories: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        CategoryRow(geometry: geometry, categoryNameLeft: "Business", categoryNameRight: "Science")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Sports", categoryNameRight: "Opinion")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Finance", categoryNameRight: "Politics")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Health", categoryNameRight: "Arts")
                    }
                    .padding()
                }
                .navigationBarTitle("Categories") // Set the navigation bar title
                .navigationBarHidden(true)
            }
        }
    }
}

struct Categories_Previews: PreviewProvider {
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
