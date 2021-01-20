//
//  Choise.swift
//  Destini-iOS13
//
//  Created by Михаил Зиновьев on 20.01.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Choise {
    let text : String
    let choiseDestination : Int
    
    init(text : String, destination : Int) {
        self.text = text
        self.choiseDestination = destination
    }
}
