//
//  ContentView.swift
//  SwipeableCards_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 01/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var users: [User] = [
        User(id: 0, firstName: "Elon", lastName: "Musk", age: 51, mutualFriends: 13, imageName: "elonMusk", occupation: "CEO of Tesla Motor"),
        User(id: 1, firstName: "Mark", lastName: "Zukerberg", age: 39, mutualFriends: 16, imageName: "markZukerberg", occupation: "CEO of Facebook"),
        User(id: 2, firstName: "Sidhu", lastName: "Mosewalla", age: 28, mutualFriends: 9, imageName: "sidhu", occupation: "Punjabi Singer"),
        User(id: 3, firstName: "Salman", lastName: "Khan", age: 54, mutualFriends:10, imageName: "salmanKhan", occupation: "Actor"),
        User(id: 4, firstName: "Steve", lastName: "Jobs", age: 56, mutualFriends: 20, imageName: "SteveJobs", occupation: "CEO of Apple"),
        User(id: 5, firstName: "Khawaja", lastName: "Abdul Haleem", age: 25, mutualFriends: 13, imageName: "profile", occupation: "iOS Developer")
    ]
    
    private func getCardWidth(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        let offset: CGFloat = CGFloat(users.count - 1 - id) * 10
        return geometry.size.width - offset
    }
    
    private func getCardOffset(_ geometry: GeometryProxy, id: Int) -> CGFloat {
        return  CGFloat(users.count - 1 - id) * 10
    }
   
    var body: some View {
        VStack {
          
            GeometryReader { geometry in
              
                VStack {
                    DateView()
                  
                    ZStack {
                      
                        ForEach(self.users, id: \.self) { user in
                            CardView(user: user, onRemove: { removedUser in
                               // Remove that user from our array
                               self.users.removeAll { $0.id == removedUser.id }
                              })
                            .animation(.interactiveSpring(), value: 15) // Animate our changes to our frame
                              .frame(width: self.getCardWidth(geometry, id: user.id),
                                     height: 400)
                              .offset(x: 0, y: self.getCardOffset(geometry, id: user.id))
                        }
                    }
                    Spacer()
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(Date(), style: .date)
                        .font(.title).bold()
                    
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }.padding()
        }
        .background(.white)
        .cornerRadius(10)
        .padding()
        .shadow(radius: 5)
    }
}
