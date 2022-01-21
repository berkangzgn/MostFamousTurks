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
                .frame(height: UIScreen.main.bounds.height*0.25)
            
            picView(image: Image(selectedLeader.picName))
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.15)
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(selectedLeader: atilla)
    }
}
