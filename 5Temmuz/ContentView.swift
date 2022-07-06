//
//  ContentView.swift
//  5Temmuz
//
//  Created by Yusuf İhsan Görgel on 5.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = "Kenan" //içeriği canlı olarak değişebilen bir değişken tanımlama  getx'deki .obs gibi
    var body: some View {
        VStack(spacing: 10) {
            Text("Hello, world").foregroundColor(.red).bold().font(.largeTitle)
            Text("Hello, world")
            Text("Hello World").frame(maxWidth: .infinity).background(Color.red).padding()
            TextField("Username",text: $username, onEditingChanged: {
                _ in
            }, onCommit: {
                print(username) //klavyedeki return tuşuna basınca çalışır
            })
            Button("Please Click"){
                print("Clicked")
            }
            Button(action: {
                print("Clicked")
            }){
                Text("Button 2 Clicked")
            }.frame(width: .infinity).background(.red)
            // Button()
        }.foregroundColor(.blue).font(.title)// bu özelliklerden verilmeyenlere otomatik atar
    }
}


//hot reload yaptırmayı sağlar
struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

// Spacing widgetlar arasına boşluklar koyar
// infinity ekranda kalan yerleri doldurtur
// kenan hocanın linkedlnine gir geçmişinden swiftui paylaşımını bul o pdfi indir
//textfieldın içerisine verdiğimiz değişkende yapılan değişiklikler otomatik gerçekleşir
//Vstack yapısı widgetların aynı ekranda olmasını sağlar
