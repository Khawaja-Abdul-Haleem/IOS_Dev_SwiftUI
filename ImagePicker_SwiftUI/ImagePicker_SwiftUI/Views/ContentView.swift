//
//  ContentView.swift
//  ImagePicker_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 26/05/2023.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("ImagePicker")
                .font(.largeTitle.bold())
            ImageSelectionView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

