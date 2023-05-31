//
//  ContentView.swift
//  ProtoType_SWIFTUI
//
//  Created by Khawaja Abdul Haleem on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            myTabView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct myTabView: View {
    @State var selection = 0
   
    var body: some View {
        TabView(selection: $selection) {
            Categories()
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("Categories")
                    }
                }
                .tag(0)
            
            Profile()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
                .tag(1)
        }
    }
}
