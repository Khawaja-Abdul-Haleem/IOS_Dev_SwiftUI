//
//  CategoryCard.swift
//  ProtoType_SWIFTUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI
struct CategoryCard: View {
    let geometry: GeometryProxy
    let categoryName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(categoryName.lowercased())
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(
                    width: geometry.size.width * 0.45, height: geometry.size.width * 0.55)
            Text(categoryName)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(12)
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous)) // Add clip shape to the whole ZStack
        
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
