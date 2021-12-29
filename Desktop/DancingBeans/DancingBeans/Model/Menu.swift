//
//  Menu.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import Foundation


struct Menu{
    let nameMenu: String
    let count : Int
    let ice_hot : Bool
    let shot : Int

    
    init(nameMenu: String, count: Int, shot: Int, ice_hot: Bool) {
        self.nameMenu = nameMenu
        self.count = count
        self.shot = shot
        self.ice_hot = ice_hot
    }
}
