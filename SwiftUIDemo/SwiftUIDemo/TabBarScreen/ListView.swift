//
//  ListView.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

struct ListView: View {
    var universityLists = UniversityModel().university
    var body: some View {
        List(universityLists) { item in
            HStack{
                VStack {
                    Image(item.logo)
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(10)
                        .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 10)
                }
               
                VStack{
                    Text(item.name)
                        .bold()
                        .padding([.leading, .top, .trailing, .bottom], 10)
                        .frame(width: 150, height: 50, alignment: .center)
                    Text(item.address)
                        .padding([.leading, .top, .trailing, .bottom], 10)
                        .frame(width: 250, height: 50, alignment: .center)
                    Text(item.phone)
                        .padding([.leading, .top, .trailing, .bottom], 10)
                        .frame(width: 150, height: 50, alignment: .center)
                }
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
