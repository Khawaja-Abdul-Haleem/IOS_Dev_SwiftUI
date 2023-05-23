//
//  DashboardView.swift
//  SwiftUIDemo
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI

struct DashboardView: View {
    @State var myPosts: [APIStruct] = []
    var body: some View {
        HStack {
            List(myPosts) { item in
                HStack{
                    VStack {
                        Text("Title: \(item.title)")
                        
                    }
                }
            }.onAppear(){
                APIClass().getPosts { posts in
                    self.myPosts = posts
                }
            }
        }
       
        
       
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
