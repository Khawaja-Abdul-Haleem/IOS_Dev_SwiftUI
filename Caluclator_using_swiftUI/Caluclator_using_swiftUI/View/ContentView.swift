//
//  ContentView.swift
//  Caluclator_using_swiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
        VStack {
            VStack {
                Text(header)
                    .foregroundColor(Color.white.opacity(0.25))
                    .font(.title)
                    .bold()
                OperationPerformView()
            }.background(Color.black)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
