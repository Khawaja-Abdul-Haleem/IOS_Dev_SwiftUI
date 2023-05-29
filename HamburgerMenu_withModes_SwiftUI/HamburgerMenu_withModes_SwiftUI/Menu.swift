//
//  Menu.swift
//  HamburgerMenu_withModes_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 29/05/2023.
//

import SwiftUI

struct Menu: View {
    @Binding var dark: Bool
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.default) {
                        self.show.toggle()
                    }
                }) {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .frame(width: 25, height: 30)
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .frame(width: 25, height: 30)
                        .font(.title)
                }
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            
            
            Image("profile")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                
                
            VStack(spacing: 12) {
                Text("Khawaja Abdul Haleem")
                Text("iOS Developer")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            HStack(spacing: 22) {
                Image(systemName: "moon.fill")
                    .font(.title)
                Text("Dark Mode")
                Spacer()
                
                Button(action: {
                    self.dark.toggle()
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle = self.dark ? .dark : .light
                
                }) {
                    Image("toggleON")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .font(.title)
                        .rotationEffect(.init(degrees: self.dark ? 0 : 180))
                }
                
            }
            .padding(.top, 25)
            
            Group {
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "book")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.yellow)
                        Text("Story")
                        Spacer()
                    }
                    
                    
                    
                }.padding(.top, 25)
                
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.pink)
                        Text("Chats")
                        Spacer()
                    }
                    
                    
                    
                }.padding(.top, 25)
                
                Divider().padding(.top, 25)
                
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "tv.and.mediabox")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.purple)
                        Text("Media")
                        Spacer()
                    }
                    
                }.padding(.top, 25)
                
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.green)
                        Text("Settings and Privacy")
                        Spacer()
                    }
                    
                }.padding(.top, 25)
                
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "envelope")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.orange)
                        Text("Help Center")
                        Spacer()
                    }
                    
                }.padding(.top, 25)
                
                Button(action: {
                  
                }) {
                    HStack(spacing: 22) {
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                        Text("Notifications")
                        Spacer()
                    }
                    
                }.padding(.top, 25)
                
                
            }
            
            Spacer()
        }
        .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background((self.dark ?  Color.black : Color.white).edgesIgnoringSafeArea(.all))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(.all))
    }
}
