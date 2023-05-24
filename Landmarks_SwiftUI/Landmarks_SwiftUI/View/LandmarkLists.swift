//
//  LandmarkLists.swift
//  Landmarks_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import SwiftUI

struct LandmarkLists: View {
    var body: some View {
        
        NavigationView {
            List(landmarks) { landmark in
                //
                NavigationLink(destination: LandmarkDetails(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle("Landmarks")
        }
        
    }
}

struct LandmarkLists_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkLists()
    }
}
