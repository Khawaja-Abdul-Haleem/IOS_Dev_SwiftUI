//
//  ContentView.swift
//  Horizontal_ScrollView_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Events List")
                .padding()
                .font(.system(size: 50, weight: .bold))
                .background(Color.green)
                .cornerRadius(10)
            Divider()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(events) {
                        event in
                        VStack {
                            Text(event.emoji)
                                .font(.system(size: 50))
                                
                            Text(event.name)
                                .font(.system(size: 50))
                            
                        }
                        .padding()
                        .background(event.color)
                        .cornerRadius(30)
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
