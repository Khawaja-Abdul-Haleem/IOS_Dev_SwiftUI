//
//  PopularItemsRowVIew.swift
//  FoodOrderingUI_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import SwiftUI

struct PopularItemsRowVIew: View {
    var item: Popular
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "flame")
                .font(.footnote)
                .foregroundColor(.red)
                .padding(8)
                .background(Color.orange.opacity(0.1))
                .clipShape(Circle())
            // setting it to right
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(-10)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: getRect().width / 3)
                .padding(.top, 6)
            
            Text(item.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text(item.description)
                .font(.footnote)
                .foregroundColor(.gray)
            (
                Text("Rs ")
                    .font(.footnote)
                    .foregroundColor(.pink)
                +
                Text(item.price)
                    .font(.title2)
                    .foregroundColor(.black)
            )
            .fontWeight(.bold)
            .padding(.top, 8)
        }
        .padding(.horizontal, 30)
        .padding(.vertical)
        .background(.white)
        .cornerRadius(25)
        .shadow(color: .black.opacity(0.06), radius: 5, x: 5, y: 5)
    }
}

struct PopularItemsRowVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
