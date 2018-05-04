//
//  MainData.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MainData{
    
    static func instanceMatch(){
        var firstMatch = Match(date: "2018.05.30",
                               group: "A",
                               stadium: Stadium(name:"samaraArena", stadiumImage: "samaraArena"),
                               countryA: Country(name: "uruguay", player: [], dt: DT(name: "Tabarez",identifier: "DT"), shield:"uruguay"),
                               countryB: Country(name: "rusia", player: [], dt: DT(name: "jsahjgfshdg",identifier: "DT"), shield: "rusia"))
        
        }
}
