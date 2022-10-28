//
//  BuyGem.swift
//  UIButton+handler
//
//  Created by Pablo  on 28/10/22.
//

import Foundation
import UIKit

struct BuyGem:GenericProtocol {
    
    typealias A = BuyGem
    
    var picture: Currency
    
    var name: String
    
    var title: String
    
    var amount: Int
    
    var icon: Currency
    
    var gemAmount:Int?
  
   
    
    static var items: [Self] = [
        BuyGem(picture:.Gem,name: "ROSAS", title: "", amount: 25,icon:.Gem,gemAmount:50),
        BuyGem(picture:.Gem,name: "AMARILLAS", title: "GEMAS", amount: 150,icon:.Gem,gemAmount:250),
        BuyGem(picture:.Gem,name: "VERDES", title: "GEMAS", amount: 325,icon:.Gem,gemAmount:500),
        BuyGem(picture:.Gem,name: "AZULES", title: "GEMAS", amount: 700,icon:.Gem,gemAmount:1000),
        BuyGem(picture:.Gem,name: "ROJAS",title: "GEMAS", amount: 1500,icon:.Gem,gemAmount:2000),
        BuyGem(picture:.Gem,name: "NARANJA",title: "GEMAS", amount: 2500,icon:.Gem,gemAmount:5000)]
    
}

