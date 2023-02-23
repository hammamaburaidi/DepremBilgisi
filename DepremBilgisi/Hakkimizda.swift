//
//  Hakkimizda.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 13.02.2023.
//

import SwiftUI

struct Hakkimizda: View {
    var body: some View {
        ZStack{
            VStack (spacing: 35){
                VStack(spacing: 10){
                    Text("Ecodation")
//                        .font(.title)
//                        .bold()
                        .foregroundColor(.black)
                        .font(.custom("Roboto-Black", fixedSize: 30))
                    
                    Text("Better Digital Future For Next-Gen Customers")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }

                VStack {

                    InfoView(text: "www.ecodation.com", symbolName: "globe.europe.africa.fill")
                    
                    InfoView(text: "info@ecodation.com", symbolName: "envelope.fill")
                    
                    InfoView(text: "+90 212 934 10 84", symbolName: "phone.fill")
                    
                    InfoView(text: "Yıldız Teknik Teknopark - Istanbul / Turkey", symbolName: "location.fill")
                }
            }
        }
    }
}

struct Hakkimizda_Previews: PreviewProvider {
    static var previews: some View {
        Hakkimizda()
    }
}
