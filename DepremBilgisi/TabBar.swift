//
//  TabBar.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 14.02.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Menu()
                .tabItem {
                    Image(systemName: "circle.grid.3x3.fill")
                    Text("Menü")
                }
            Hakkimizda()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Hakkımızda")
                }
            
        }
    }
}

