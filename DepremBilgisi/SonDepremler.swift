//
//  SonDepremler.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 12.02.2023.
//

import SwiftUI

struct SonDepremler: View {
    
    @State var earthquakeData: [Result] = []
    
    public func getData(){
        let urlString = "https://api.orhanaydogdu.com.tr/deprem/live.php?limit=40"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!){data, _, error in
            if let data = data{
                do {
                    let decoder = JSONDecoder()
                    let decodedData = try decoder.decode(DepremJSONModel.self, from: data)
                    self.earthquakeData = decodedData.result
                } catch {
                    print("Error: \(error)")
                }
            }
        }.resume()
    }
    
    var body: some View {
        NavigationView {
            List(earthquakeData, id: \.self) { earthquake in
                NavigationLink( destination: LocationView(latitude: earthquake.lat, longitude: earthquake.lng, depth: earthquake.depth, magnitude: earthquake.mag, title: earthquake.title, date: earthquake.date),
                    label: {
                        HStack {
                            Image("earthquakeIcon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                
                            VStack(alignment: .leading) {
                                Text(earthquake.title)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("Tarih: \(earthquake.date)")
                                Text("Büyüklük: " + String(format: "%.1f", earthquake.mag))
                                Text("Derinlik: " + String(format: "%.1f", earthquake.depth))
                            }
                        }
                    })
            }
            .listStyle(.grouped)
            .navigationTitle("Son Depremler")
        }
        .onAppear {
            getData()
        }
    }
}

