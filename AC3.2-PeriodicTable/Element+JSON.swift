//
//  Element+JSON.swift
//  AC3.2-PeriodicTable
//
//  Created by Eric Chang on 12/21/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import Foundation

extension Element {
    func populate(from elementDict: [String:Any]) {
        
        guard let number = elementDict["number"] as? Int ,
            let weight = elementDict["weight"] as? Double,
            let name = elementDict["name"] as? String,
            let symbol = elementDict["symbol"] as? String,
            let group = elementDict["group"] as? Int else { return }
        
        self.group = Int16(group)
        self.name = name
        self.number = Int16(number)
        self.weight = weight
        self.symbol = symbol
    }
}


/*
 do {
 let els = try moc.fetch(request)
 
 for el in els {
 print("\(el.group) \(el.number) \(el.symbol)")
 }
 }
 catch {
 print("error fetching")
 }
 */
 
