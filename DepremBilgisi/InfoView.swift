//
//  InfoView.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 13.02.2023.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let symbolName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(.gray)
            .frame(height: 50)
            .overlay (
                HStack {
                    Image(systemName: symbolName)
                        .foregroundColor(.white)
                    
                    Text(text)
                        .foregroundColor(.white)
                }
            )
            .padding(.all)
    }
}

//struct InfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        InfoView(text: ",,,,,,,,,,,,,,,,,", symbolName: "message.fill")
//            .previewLayout(.sizeThatFits)
//    }
//}

