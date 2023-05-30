//
//  ContentView.swift
//  FoodOrderingUI_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    // hiding tabBar
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State var selectedCategory: Category = categories.first!
    @State var selectedTab: String = "home"
    var body: some View {
        // tabView
        VStack(spacing: 0) {
            TabView {
                LandingPage(selectedCategory: $selectedCategory)
                    .tag("home")
                Color.pink
                    .tag("heart")
                
                Color.yellow
                    .tag("bell")
                
                Color.red
                    .tag("cart")
            }
            
            // custom TabBar
            customtabBar(selectedTab: $selectedTab)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
