//
//  MapView.swift
//  Landmarks_SwiftUI
//
//  Created by Khawaja Abdul Haleem on 24/05/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0, longitudeDelta: 0))
    }
    
    var body: some View {
       Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 40.689249, longitude: -74.044500))
    }
}
