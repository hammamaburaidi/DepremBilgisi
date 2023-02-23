//
//  YardimTalebi.swift
//  DepremBilgisi
//
//  Created by Hammam Aburaidi on 12.02.2023.
//

import SwiftUI

struct YardimTalebi: View {
    
    @State var firstName: String = ""
    @State var secondName: String = ""
    @State var adressOne: String = ""
    @State var adressTwo: String = ""
    @State var details: String = ""
    @State var showAlert: Bool = false

    var body: some View {
            NavigationView {
                VStack {
                    Form {
                        Section(header: Text("Kişisel Bilgiler")) {
                            TextField("İsim", text: $firstName)
                            TextField("Soyisim", text: $secondName)
                        }
                        Section(header: Text("Adres")) {
                            TextField("Adres 1", text: $adressOne)
                            TextField("Adres 2", text: $adressTwo)
                        }
                        Section(header: Text("Detaylar")) {
                            TextField("Lütfen tüm detay yazın", text: $details)
                        }
                    }
                    Button (action:{
                        showAlert.toggle()
                        }, label: {
                            Text("gönder".uppercased())
                                .frame(width: 240, height: 50)
                                .background(Color("YardimButton"))
                                .foregroundColor(.white)
                                .font(.headline)
                                .cornerRadius(12)
                        })
                    .padding(.all)
                    
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Talebiniz Oluşturuldu, Teşekkür ederiz"),
                            message: Text("bu mesaj, talebiniz oluşturulduğunu size bildirmek içindir."))
                    }
                }
                .navigationTitle("Yardım Talebi Formu")
            }
    }
}
//
//struct YardimTalebi_Previews: PreviewProvider {
//    static var previews: some View {
//        YardimTalebi()
//    }
//}
