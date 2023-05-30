//
//  LandingPage.swift
//  FoodOrderingUI_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 30/05/2023.
//

import SwiftUI

struct LandingPage: View {
    @Binding var selectedCategory: Category
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title)
                        .padding(10)
                        .background(Color.pink.opacity(0.12))
                        .foregroundColor(Color.pink)
                        .cornerRadius(8)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("profileKAH")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .background(Color.black.opacity(0.08))
                        .foregroundColor(Color.pink)
                        .cornerRadius(8)
                })
                
            }
            .overlay{
                Text("Khawaja Abdul Haleem")
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        VStack(alignment: .leading, spacing: 12, content: {
                            
                            ( Text("The Fastest in Delivery ")
                              +
                              Text("Food").foregroundColor(Color.pink)
                            )
                            .fontWeight(.bold)
                            .font(.title2)
                            
                            Button(action: {}, label: {
                                Text("Order Now")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(Color.pink)
                                    .clipShape(Capsule())
                                  
                            })
                            
                        })
                        .padding(.leading)
                        Image("deliveryMan")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3)
                    }
                    .padding()
                    .background(Color.yellow.opacity(0.35))
                    .cornerRadius(15)
                    .padding(.horizontal)
                   
                  
                    // Categories View
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack {
                            ForEach(categories) { category in
                                HStack {
                                    Image(category.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 25, height: 25)
                                        .padding(6)
                                        .background(selectedCategory.id == category.id ?  Color.white : Color.clear)
                                        .clipShape(Circle())
                                    
                                    Text(category.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(selectedCategory.id == category.id ? .white : .black)
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal)
                                .background(selectedCategory.id == category.id ? Color.pink : Color.gray.opacity(0.09))
                                .clipShape(Capsule())
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedCategory = category
                                    }
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                       
                        
                    })
                    
                    HStack {
                        Text("Popular Now")
                            .font(.title2)
                            .fontWeight(.bold)
                       
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            HStack(spacing: 8) {
                                Text("View All")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.pink)
                                
                                Image(systemName: "chevron.right")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 6)
                                    .background(.pink)
                                    .cornerRadius(5)
                                
                            }
                        })
                    }
                    .padding()
                    .padding(.top, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack(spacing: 25) {
                            ForEach(popularItems){ item in
                                PopularItemsRowVIew(item: item)
                            }
                        }
                        .padding()
                        .padding(.leading, 10)
                        
                        
                    })
                     
                    
                }.padding()
            })
        }.background(Color.black.opacity(0.03).ignoresSafeArea())
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
