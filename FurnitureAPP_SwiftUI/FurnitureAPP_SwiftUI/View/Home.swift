//
//  Home.swift
//  FurnitureAPP_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import SwiftUI


struct Home : View {
    @Environment(\.colorScheme) var scheme
    @State var search = ""
    var body: some View {
        VStack {
            ZStack {
                HStack(spacing: 15) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.horizontal.3").foregroundColor(.primary)
                    }
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "dot.square.fill").foregroundColor(.primary)
                    }
                    
                    Button(action: {
                        // changing user Interface
                        
                        UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.scheme == .dark ? .light : .dark
                    }) {
                        Image(systemName: self.scheme == .dark ? "sun.max.fill" : "moon.fill" )
                            .font(.system(size: 22))
                            .foregroundColor(.primary)
                    }
                }
                
                Text("Furniture")
                    .font(.title).bold()
                
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack(spacing: 15) {
                        TextField("Search", text: self.$search)
                        
                        if self.search != "" {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.primary.opacity(0.06))
                    .cornerRadius(12)
                    
                    HStack {
                        Text("Today's Pick")
                            .font(.title).bold()
                        
                        Spacer()
                    }
                    .padding(.top, 22)
                    
                    VStack{
                        Image("chair")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Text("Chair")
                            .font(.title).bold()
                            .padding(.top, -30)
                        
                        Text("RS 5000")
                            .foregroundColor(.gray)
                            .padding(.top, 8)//
                            .padding(.bottom)
                    }
                    .frame(width: UIScreen.main
                        .bounds.width - 30)
                    .background(Color.primary.opacity(0.06)
                        .frame(width: UIScreen.main
                            .bounds.width - 30)
                            .cornerRadius(25)
                            .padding(.top, 95)
                            
                    ).padding(.top, 25)
                    
                    HStack {
                        Text("Recommended For you")
                            .font(.title).bold()
                        
                        Spacer()
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 20)
                    
                    ForEach(furnitures, id: \.self) { furniture in
                        
                        HStack(spacing: 15) {
                            ForEach(furniture){ i in
                                VStack {
                                    Image(i.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text(i.title)
                                        .fontWeight(.bold)
                                    
                                    Text(i.price)
                                        .padding(.top, 6)
                                }
                                .padding()
                                .background(Color.primary.opacity(0.06))
                                .cornerRadius(10)
                            }
                        }
                        
                    }
                }
                .padding()

            }
            
           
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
