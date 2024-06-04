//
//  NavigationView.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/1/24.
//

import SwiftUI
import MapKit

struct NavView: View {
    
    
    @State var camera = MapCameraPosition.automatic
    
    let sunsetPoint = CLLocationCoordinate2D(
        latitude: 42.33411953543604, longitude: -83.00391061254283)
    
    let lakeOkonoka = CLLocationCoordinate2D(latitude: 42.34135686642066, longitude: -82.96248698503389)
    
    let hikingTrailsTrailhead = CLLocationCoordinate2D(latitude: 42.34019480074099 , longitude: -82.97949384159523)
    
    let belleIsleBeach = CLLocationCoordinate2D(latitude: 42.34562457742287, longitude: -82.97807724115412)
    
    let palmerParkTrail = CLLocationCoordinate2D(latitude: 42.42479757948326, longitude: -83.11846343591505)
    
    let zeMound = CLLocationCoordinate2D(latitude: 42.331780872822556, longitude: -83.02724755571867)
    
    let dequindreCut = CLLocationCoordinate2D(latitude: 42.344005774347586, longitude: -83.03359230589366)
    
    let ohairPark = CLLocationCoordinate2D(latitude: 42.44074148787961, longitude: -83.22833391534378)
    
    
    var body: some View {
        Map(position: $camera) {
            
            Marker("Sunset Point", systemImage: "sunset.fill", coordinate: sunsetPoint)
                .tint(.yellow)
            Marker("Lake Okonoka", systemImage: "water.waves", coordinate: lakeOkonoka)
                .tint(.cyan)
            Marker("Hiking Trails Trailhead", systemImage: "figure.hiking", coordinate: hikingTrailsTrailhead)
                .tint(.green)
            Marker("Belle Isle Beach", systemImage: "figure.open.water.swim", coordinate: belleIsleBeach)
                .tint(.blue)
            Marker("Belle Isle Beach", systemImage: "figure.open.water.swim", coordinate: belleIsleBeach)
                .tint(.blue)
            Marker("Belle Isle Beach", systemImage: "figure.open.water.swim", coordinate: belleIsleBeach)
                .tint(.blue)
            Marker("Belle Isle Beach", systemImage: "figure.open.water.swim", coordinate: belleIsleBeach)
                .tint(.blue)
            Marker("Belle Isle Beach", systemImage: "figure.open.water.swim", coordinate: belleIsleBeach)
                .tint(.blue)
            
        }
        
        .safeAreaInset(edge: .bottom) {
            HStack {
                Spacer()
                Button {
                    // Center on Belle Isle Beach
                    camera = .region(MKCoordinateRegion(
                        center: belleIsleBeach,
                        latitudinalMeters: 200, longitudinalMeters: 200))
                } label: {
                    Text("Belle Isle Beach")
                }
                Spacer()
                Button {
                    // Center on Belle Isle Beach
                    camera = .region(MKCoordinateRegion(
                        center: sunsetPoint,
                        latitudinalMeters: 200, longitudinalMeters: 200))
                } label: {
                    Text("Sunset Point")
                }
                Spacer()
            }
            .padding(.top)
            .background(.thinMaterial)
        }
    }
}

#Preview {
    NavView()
}
