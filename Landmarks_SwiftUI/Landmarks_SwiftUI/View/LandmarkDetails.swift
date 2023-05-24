//
//  LandmarkDetails.swift
//  Landmarks_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landmark.locationCoordinates)
                    .frame(height: 300)
                ImageView(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .bold()
                    HStack{
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                   Divider()
                    VStack {
                        Text(landmark.description)
                            .font(.subheadline)
                           
                    }
                    
                }.padding()
              
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
