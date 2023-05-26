//
//  ContentView.swift
//  CustomTab_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 26/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    let tabItems = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack {
            
            ZStack {
                switch selectedIndex {
                case 0:
                    NavigationView{
                        VStack {
                            Text("First Tab")
                        }
                        .navigationTitle("Home")
                    }
                case 1:
                    NavigationView{
                        VStack {
                            Text("Second Tab")
                        }
                        .navigationTitle("Setting")
                    }
                case 2:
                    NavigationView{
                        VStack {
                            Text("Third Tab")
                            
                        }
                        .navigationTitle("ADD")
                    }
                case 3:
                    NavigationView{
                        VStack {
                            Text("Fourth Tab")
                        }
                        .navigationTitle("Edit")
                    }
              
                default:
                    NavigationView{
                        VStack {
                            Text("Fifth Tab")
                        }
                        .navigationTitle("Message")
                    }
                }
            }
            
            Spacer()
            Divider()
            HStack {
                ForEach(0..<5){ tab in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = tab
                    }, label: {
                        if tab == 2 {
                            Image(systemName: tabItems[tab])
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                                .frame(width: 60, height: 60)
                                .background(selectedIndex == tab ? .orange : Color(UIColor.lightGray))
                                .cornerRadius(30)
                               
                        } else {
                            Image(systemName: tabItems[tab])
                                .font(.system(size: 30))
                                .foregroundColor(selectedIndex == tab ? .orange : Color(UIColor.lightGray))
                        }
                    })
                    Spacer()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
