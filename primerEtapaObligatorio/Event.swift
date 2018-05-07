//
//  Event.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 6/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class Event {
    var icon: String
    var player: String
    var time: String
    var country: String
    
    init (icon: String, player: String,time: String, country: String) {
        self.icon = icon
        self.player = player
        self.time = time
        self.country = country
    }

}
