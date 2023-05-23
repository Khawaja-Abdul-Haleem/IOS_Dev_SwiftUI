//
//  TabBarView.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem{
                    Image(systemName: "cart")
                }
            DashboardView()
                .tabItem{
                    Image(systemName: "book")
                }
            AboutUsView()
                .tabItem{
                    Image(systemName: "cart")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
