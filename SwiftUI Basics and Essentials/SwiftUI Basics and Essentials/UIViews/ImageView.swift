//
//  ImageView.swift
//  SwiftUI Basics and Essentials
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("statueOfLiberty")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black))
                .shadow(radius: 7)
                .shadow(color: Color.black, radius: 5, x: 5, y: 5)
                
        }.padding()
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
