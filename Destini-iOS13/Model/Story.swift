//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title : String
    var choise1 : Choise
    var choise2 : Choise
    
    init(title : String, choise1 : Choise, choise2 : Choise ) {
        self.title = title
        self.choise1 = choise1
        self.choise2 = choise2
    }
}
