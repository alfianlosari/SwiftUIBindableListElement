//
//  Inventory.swift
//  Inventory
//
//  Created by Alfian Lo on 22/05/22.
//

import Foundation

struct Inventory: Identifiable {
    
    let id = UUID()
    var name: String
    var quantity: Int
    var imageSymbol: String
    
}
