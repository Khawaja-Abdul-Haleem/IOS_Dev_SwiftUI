//
//  MapView.swift
//  SwiftUI Basics and Essentials
//
//  Created by Khawaja Abdul Haleem on 23/05/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.689249, longitude: -74.044500), span: MKCoordinateSpan(latitudeDelta: 0, longitudeDelta: 0))
    
    var body: some View {
       Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
