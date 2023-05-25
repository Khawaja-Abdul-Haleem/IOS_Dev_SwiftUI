//
//  SnapCrousal.swift
//  Carousel_Slider_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 25/05/2023.
//

import SwiftUI

// to for accepting List
struct SnapCarousel<Content: View, T: Identifiable>: View {
    var content: (T) -> Content
    var list: [T]
    
    // properties
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T) -> Content) {
        
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    // offset
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    
    var body: some View {
        GeometryReader {proxy  in
            
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustmentWidth = (trailingSpace / 2) - spacing
            HStack(spacing: spacing) {
                ForEach(list) { item in
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                       
                    
                }
            }
            // spacing will be horizontal padding
            .padding(.horizontal, spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? adjustmentWidth: 0) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = value.translation.width
                    })
                    .onEnded({ value in
                        let offSetX = value.translation.width
                        // we are going to convert tralation into prgress (0 - 1)
                        // and round the value
                        // based on progress increasing or decreasing the currentindex
                        let progress = -offSetX / width
                        let roundIndex = progress.rounded()
                        // setting max
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        
                        // updating index
                      //  currentIndex = index
                        
                    })
                    .onChanged({ value in
                        // updating your index
                        let offSetX = value.translation.width
                        // we are going to convert tralation into prgress (0 - 1)
                        // and round the value
                        // based on progress increasing or decreasing the currentindex
                        let progress = -offSetX / width
                        let roundIndex = progress.rounded()
                        // setting max
                        index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)



                    })
//
                
            )
        }
        // animating when offset 0
        .animation(.easeInOut, value: offset == 0)
        
    }
}

struct SnapCrousal_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
