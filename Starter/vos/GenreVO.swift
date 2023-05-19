//
//  GenreVO.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import Foundation

class GenreVO {
    var name: String = "ACTION"
    var isSelected: Bool = false
    
    init(name: String, isSelected: Bool) {
        self.name = name
        self.isSelected = isSelected
    }
}
