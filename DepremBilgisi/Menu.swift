//
//  Menu.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 14.02.2023.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView {
                VStack(){
                    Spacer()
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Spacer()
                    
                    VStack (spacing: 50){
                        // First Butotn
                        NavigationLink(destination: SonDepremler()) {
                            Button(action: {
                                
                            }) {
                                Text("Son Depremler")
                                    .fontWeight(.bold)
                            }
                            .frame(width: 220, height: 44)
                            .padding()
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            .background(Color("SonDepremButton"))
                            .cornerRadius(10)
                            .shadow(radius: 2.2)
                            
                        }
                        
                        // Second Button
                        NavigationLink(destination: Eczaneler()){
                            Button(action: {
                            }) {
                                Text("Eczaneler")
                                    .fontWeight(.bold)
                            }
                            .frame(width: 220, height: 44)
                            .padding()
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            .background(Color("EczaneButton"))
                            .cornerRadius(10)
                            .shadow(radius: 2.2)
                        }
                        
                        // Third Button
                        NavigationLink(destination: YardimTalebi()){
                            Button(action: {
                            }) {
                                Text("Yardım Talep Et")
                                    .fontWeight(.bold)
                            }
                            .frame(width: 220, height: 44)
                            .padding()
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            .background(Color("YardimButton"))
                            .cornerRadius(10)
                            .shadow(radius: 2.2)
                        }
                    }// End of Vstack
                    Spacer()
                }// End of VStack
        } // End of Navigation View
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
