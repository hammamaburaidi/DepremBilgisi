//
//  LocationView.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 16.02.2023.
//

import SwiftUI
import MapKit

struct EarthquakeAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let magnitude: Float
}

struct LocationView: View {
    
    var latitude: Double
    var longitude: Double
    var depth: Double
    var magnitude: Float
    var title: String
    var date: String
    
    @State private var mapRegion: MKCoordinateRegion
    
    init(latitude: Double, longitude: Double, depth: Double, magnitude: Float, title: String, date: String) {
        self.latitude = latitude
        self.longitude = longitude
        self.depth = depth
        self.magnitude = magnitude
        self.title = title
        self.date = date
        self._mapRegion = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)))
    }
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: [ EarthquakeAnnotation(coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), magnitude: magnitude)]) { annotation in
            MapMarker(coordinate: annotation.coordinate, tint: .red)
        }
    }
}
