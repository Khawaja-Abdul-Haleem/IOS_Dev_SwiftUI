//
//  Home.swift
//  HamburgerMenu_withModes_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 29/05/2023.
//

import SwiftUI

struct Home: View {
    @State var dark = false
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader { _ in
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                withAnimation(.default) {
                                    self.show.toggle()
                                }
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                
                            }
                            Spacer()
                        }
                        Text("Home")
                        
                    }
                    .padding()
                    .foregroundColor(.primary)
                    
                    .overlay(Rectangle().stroke(Color.primary.opacity(0.1), lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.top))
                    
                    Spacer()
                    Text("Dark Mode Menu")
                    Spacer()
                }
                
            }
            
            HStack {
                Menu(dark: self.$dark, show: self.$show)
                    .preferredColorScheme(self.dark ? .dark : .light)
                    .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
            }
            .background(Color.primary.opacity(self.show ? (self.dark ? 0.05 : 0.2) : 0).edgesIgnoringSafeArea(.all))
            
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
