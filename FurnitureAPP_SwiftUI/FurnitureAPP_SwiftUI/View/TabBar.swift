//
//  TabBar.swift
//  FurnitureAPP_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import SwiftUI

struct TabBar : View{
    @State var selectedIndex = 0
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Home()
                    .opacity(self.selectedIndex == 0 ? 1 : 0)
                
                Search()
                    .opacity(self.selectedIndex == 1 ? 1 : 0)

                Cart()
                    .opacity(self.selectedIndex == 2 ? 1 : 0)
                
                Account()
                    .opacity(self.selectedIndex == 3 ? 1 : 0)
                
            }
            HStack {
                Button(action: {
                    self.selectedIndex = 0
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "house")
                        // dark mode adoption
                            .foregroundColor(self.selectedIndex == 0 ? .white : .primary)
                        
                        if self.selectedIndex == 0 {
                            Text("Home")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.selectedIndex == 0 ? .green : Color.clear)
                    .clipShape(Capsule())
                    
                }
                Spacer(minLength: 0)
                
                Button(action: {
                    self.selectedIndex = 1
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "magnifyingglass")
                        // dark mode adoption
                            .foregroundColor(self.selectedIndex == 1 ? .white : .primary)
                        
                        if self.selectedIndex == 1 {
                            Text("Search")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.selectedIndex == 1 ? .green : Color.clear)
                    .clipShape(Capsule())
                    
                }
                Spacer(minLength: 0)
                
                Button(action: {
                    self.selectedIndex = 2
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "cart")
                        // dark mode adoption
                            .foregroundColor(self.selectedIndex == 2 ? .white : .primary)
                        
                        if self.selectedIndex == 2 {
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.selectedIndex == 2 ? .green : Color.clear)
                    .clipShape(Capsule())
                    
                }
                
                Spacer(minLength:  0)
                
                Button(action: {
                    self.selectedIndex = 3
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: "macpro.gen1")
                        // dark mode adoption
                            .foregroundColor(self.selectedIndex == 3 ? .white : .primary)
                        
                        if self.selectedIndex == 3 {
                            Text("Account")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(self.selectedIndex == 3 ? .green : Color.clear)
                    .clipShape(Capsule())
                    
                }
            }
            .padding(.horizontal, 25)
            .padding(.top)
            // based on device padding will be changed
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            // for shadow
            .background(self.scheme == .dark ?  Color.black : Color.white)
            .shadow(color: .primary.opacity(0.08), radius: 5, x: 5, y: -5)
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
