//
//  picView.swift
//  MostFamousTurks
//
//  Created by Berkan Gezgin on 21.01.2022.
//

import SwiftUI

struct picView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            // .padding() // padding diyerek resmin tüm kenarlarından boşluk bırakarak tüm ekranlarda görünür kılabilirdik ancak burada bizim amacımız ekrana göre oranlayarak resimi boyutlandırmak
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.24, alignment: .center)
            // main: ana ekranı aldık, bounds:ana ekranın boyutlarını aldık
            .clipShape(Circle())
            .overlay(Circle().stroke(Color .white, lineWidth: 2)) // overlay ile bi katman daha attık ve içini boşaltarak bunu çerçeve olarak kullandık
            .shadow(radius: 16) // Çerçeveye gölgeleme yaptık
    }
}

struct picView_Previews: PreviewProvider {
    static var previews: some View {
        picView(image: Image("atatürk"))
    }
}
