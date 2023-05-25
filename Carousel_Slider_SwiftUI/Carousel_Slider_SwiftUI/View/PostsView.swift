//
//  PostsView.swift
//  Carousel_Slider_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import SwiftUI


struct PostsView: View {
    @State var currentIndex: Int = 0
    @State var posts: [Post] = []
    var body: some View {
        ZStack {
            VStack{
                Text("My Posts -> Designed by KAH")
                    .padding()
                    .font(.system(size: 25, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // snapCarousal
                SnapCarousel(index: $currentIndex, items: posts) { post in
                    
                    GeometryReader{proxy in
                        let size = proxy.size
                        
                        Image(post.postImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width)
                            .cornerRadius(12)
                    }
                    
                }.padding(.vertical, 40)
                
                // indicator
                HStack(spacing: 10) {
                    ForEach(posts.indices, id: \.self) { index in
                        Circle()
                            .fill(Color.black.opacity(currentIndex == index ? 1 : 0.1))
                            .frame(width: 10, height: 10)
                            .scaleEffect(currentIndex == index ? 1.4 : 1)
                            .animation(.spring(), value: currentIndex == index)
                    }
                }
                
            }.frame(maxHeight: .infinity, alignment: .top)
                .onAppear {
                    for index in 1...5 {
                        posts.append(Post(postImage: "post\(index)"))
                    }
                }
        }
    }
}


struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
