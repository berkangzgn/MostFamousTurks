//
//  Leaders.swift
//  MostFamousTurks
//
//  Created by Berkan Gezgin on 21.01.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Leaders : Identifiable {
    var id = UUID()
    var name : String
    var picName : String
    var desc : String
    var dt : String
    var coordinate : Coordinate
    
    var locCoord : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let metehan = Leaders(name: "Metehan", picName: "metehan", desc: "Asya Hun İmparatorluğu'nun kurucusu olan Teoman, oğlu Metehan'ın kendisi yerine Metehan'ın üvey kardeşini tahta çıkarmak istedi. Metehan da babasını, üvey annesini ve üvey kardeşini öldürerek tahta geçti ve ülkesinin altın çağını yaşattı. Türklerin ilk düzenli ordusunu kurmuştur ve onluk sistemi ilk getiren kişidir.", dt: "MÖ 234-MÖ 174", coordinate: Coordinate(latitude: 20.0, longitude: 20.0))
let atilla = Leaders(name: "Atilla", picName: "atilla", desc: "Germen (Alman) efsanelerinde Attila, çok büyük ve iyiliksever bir hükümdardır. Attila'nın sarayında birçok Germen hükümdarı yaşar. Nibelungen Destanı, Hun-Germen mücadelelerinden meydana gelir. Bu hikâyelerde Attila, Etzel adında büyük otoriteye sahip, barışsever ve yalnız asilere karşı kılıç kuşanan asil ruhlu bir hükümdardır. Avrupa Hun İmparatorluğu'nun başkenti olan Etzelburg adının buradan geldiği bilinmektedir.Attila M.S. 453 yılında son eşi tarafından gerdek gecesi öldürüldü.", dt: "395-453", coordinate: Coordinate(latitude: 30.0, longitude: 30.0))
let alparslan = Leaders(name: "Alp Arslan", picName: "alparslan", desc: "Büyük Selçuklu Devletinin en önemli hükümdarlarından biri olan Alparslan, 1071 yılında Bizans ile yaptığı Malazgirt Savaşı ile aklımıza kazınmıştır. İlk kez Anadolu'nun kapılarını Türklere açan savaşı kazanmasıyla Bizans'a büyük darbe indirmiştir.", dt: "1029-1072", coordinate: Coordinate(latitude: 40.0, longitude: 40.0))
let atatürk = Leaders(name: "Mustafa Kemal Atatürk", picName: "atatürk", desc: "Yaptıklarını yazmaya kalksak yazacak yer kalmaz. Asker, siyasetçi ve devlet adamıdır aynı zamanda Geometri adında kitabı vardır. Askerlikte mareşallık rütbesini alan 2 Türkten birisidir. 1919 yılında başlattığı Türk Kurtuluş Savaşı'nın önderliğini yapmış; daha sonra, modern Türkiye'yi oluşturan devrim ve reformları gerçekleştirmiştir. Trablusgarp ve Çanakkale savaşları ile dehasını tüm dünyaya göstermiş, çökmekte olan bir devleti yıkıp modern ve güçlü bir ülke kurmuştur. İşgal altındaki devleti kurtarıp 1923 yılında Türkiye Cumhuriyeti'ni kurmuş olan Atatürk, Türk tarihinin en büyük Türklerindendir. ", dt: "1881-1938", coordinate: Coordinate(latitude: 50.0, longitude: 50.0))
