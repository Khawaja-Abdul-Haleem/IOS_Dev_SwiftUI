//
//  ImageSelectionView.swift
//  ImagePicker_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 26/05/2023.
//

import SwiftUI


struct ImageSelectionView: View {
    @State var showImagePicker : Bool = false
    @State private var sliderValue = 1.0
    // show selected Image
    @State var selectedImage: Image? = Image("")
    var body: some View {
        ZStack {
            VStack {
                // show Image
                ZStack {
                    Text("Image here")
                        .font(.system(size: 27))
                        .foregroundColor(Color.gray)
                    self.selectedImage?.resizable().scaledToFit()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(sliderValue)
                    
                }
                
                Button(action: {
                    self.showImagePicker.toggle()
                }, label: {
                    Text("PickImage")
                        .foregroundColor(Color.white)
                        .bold()
                    
                })
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                
                ZStack {
                    HStack{
                        VStack {
                            Text("Opacity")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 20, weight: .bold))
                            VStack {
                                
                                Slider(value: $sliderValue, in: 0...1) {
                                    
                                } minimumValueLabel: {
                                    Text("0").font(.title2).fontWeight(.thin)
                                } maximumValueLabel: {
                                    Text("1").font(.title2).fontWeight(.thin)
                                }
                                
                                Text("\(sliderValue, specifier: "%.2f")")
                            }
                            
                        }
                    }.padding()
                }
                
            }
            .sheet(isPresented: $showImagePicker, content: {
                ImagePicker(image: self.$selectedImage)
            })
        }
    }
}
struct ImageSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSelectionView()
    }
}
