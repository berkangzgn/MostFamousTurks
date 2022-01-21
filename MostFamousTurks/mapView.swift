//
//  mapView.swift
//  MostFamousTurks
//
//  Created by Berkan Gezgin on 21.01.2022.
//

import SwiftUI
import MapKit

struct mapView: UIViewRepresentable {
    // UIViewRepresentable : UIKit görünümlerini SwiftUI içerisinde kullanabilmemiz için kullandığımız protokoldür.
    
    // Protokolü değiştirdiğimiz için güncel protokole uygun kullanım fonksiyonları aşağıdakilerdir.
    
    let loc : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: loc, span: span)
        uiView.setRegion(region, animated: true)
    }
     
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

/*
 struct mapView: View {
     @State var region = MKCoordinateRegion(center: leadersArray[0].locCoord, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)) // Span zoom miktarıydı.
     
     var body: some View {
         Map(coordinateRegion: $region)
     }
 }
*/

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView(loc: leadersArray[0].locCoord)
    }
}
