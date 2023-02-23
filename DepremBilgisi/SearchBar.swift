//
//  SearchBar.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 23.02.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            TextField("Mahalle Ara", text: $text)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}
