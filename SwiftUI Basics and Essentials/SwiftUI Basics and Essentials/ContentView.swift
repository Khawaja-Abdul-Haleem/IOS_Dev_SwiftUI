//
//  ContentView.swift
//  SwiftUI Basics and Essentials
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            ImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(imageTitle)
                    .font(.title)
                    .bold()
                HStack{
                    Text(imageSubTitle)
                    Spacer()
                    Text(imageLocation)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
               Divider()
                VStack {
                    Text(imageDescription)
                        .font(.subheadline)
                        .minimumScaleFactor(0.01)
                }
                
            }.padding()
            Spacer()
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
