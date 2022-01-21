//
//  ContentView.swift
//  MostFamousTurks
//
//  Created by Berkan Gezgin on 21.01.2022.
//

import SwiftUI

struct ListName: View {
    var body: some View {
        NavigationView {
            List(leadersArray) { Leaders in
                NavigationLink {
                    DetailedView(selectedLeader: Leaders)
                } label: {
                    VStack {
                        Text(Leaders.name)
                    }
                }
            }.navigationTitle(Text("Önemli Liderlerimiz"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListName()
    }
}
