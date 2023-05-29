//
//  ContentView.swift
//  DropDown_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String = "Developer"
    var body: some View {
        VStack {
            HStack {
                Text("Designation")
                    .padding()
                    .font(.title3)
                
                DropDown(content: ["Developer", "Manager", "HR", "Assistant", "Security", "Driver", "Other"], selection: $selection, activeTint: .primary.opacity(0.1), inActiveTint: .white.opacity(0.05),
                    dynamic: true
                )
                .frame(width: 140)
            }
          
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .environment(\.colorScheme, .dark)
        .background {
            Color.black.opacity(0.91)
                    .ignoresSafeArea()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK:  CustomViewBuilder
struct DropDown: View {
    // - dropDown properties
    var content: [String]
    @Binding var selection: String
    var activeTint: Color
    var inActiveTint: Color
    var dynamic: Bool = true
    // - ViewProperties
    
    @State private var expandView: Bool = false
    
    var body: some View {
        GeometryReader {
          
            let size = $0.size
            VStack(alignment: .leading, spacing: 0) {
                if !dynamic {
                    RowView(selection, size)
                }
                
                ForEach(content.filter {
                    dynamic ? true : $0 != selection
                }, id: \.self) { title in
                    RowView(title, size)
                }
            }
            .background{
                Rectangle()
                    .fill(inActiveTint)
            }
            .offset(y: dynamic ? (CGFloat(content.firstIndex(of: selection) ?? 0) * -40) : 0)
        }
        .background(Color.red)
        .frame(height: 40)
        .overlay(alignment: .trailing) {
            Image(systemName: "chevron.up.chevron.down")
                .padding(.trailing, 10)
        }
        .mask(alignment: .top) {
            Rectangle()
                .frame(height: expandView ? CGFloat(content.count)  * 40 : 40)
            // moving the mask based on selecion, so that every content will be visible
                .offset(y: dynamic && expandView ? (CGFloat(content.firstIndex(of: selection) ?? 0) * -40) : 0)
        }
    }
 
    // - Row View
    @ViewBuilder
    func RowView(_ title: String, _ size: CGSize) -> some View {
       
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.horizontal)
            .frame(width: size.width, height: size.height, alignment: .leading)
            .background {
                if selection == title {
                    Rectangle().fill(inActiveTint)
                        .transition(.identity)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    // if expanded them make selection
                    if expandView {
                        expandView = false
                        // disable aniamtion for non-dynamic
                        if dynamic {
                            selection = title
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                                selection = title
                            }
                        }
                    } else {
                        // disable outside tap
                        if selection == title {
                            expandView = true
                        }
                     
                    }
                    
                }
            }
        
    }
}
