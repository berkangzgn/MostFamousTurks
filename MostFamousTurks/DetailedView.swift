//
//  DetailedView.swift
//  MostFamousTurks
//
//  Created by Berkan Gezgin on 21.01.2022.
//

import SwiftUI

struct DetailedView: View {
    var selectedLeader : Leaders
    var body: some View {
        VStack {
            mapView(loc: selectedLeader.locCoord)
                .frame(height: UIScreen.main.bounds.height*0.3)
                .edgesIgnoringSafeArea(.top) // Çentiğin yanları güvenli alan olarak geçiyor. Oraları da dolduruyoruz.
            
            picView(image: Image(selectedLeader.picName))
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.25, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.20)
        
            Text(selectedLeader.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.043, saturation: 1.0, brightness: 0.878))
                .offset(y: UIScreen.main.bounds.height * -0.17)
            Text(selectedLeader.dt)
                .foregroundColor(Color.gray)
                .offset(y: UIScreen.main.bounds.height * -0.16)
            Text(selectedLeader.desc)
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.16)
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(selectedLeader: atilla)
    }
}

// Spacer() ile sayfa üzerinde yazılar arasında boşluk bıraktırabiliriz.
