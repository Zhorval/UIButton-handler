//
//  BuyFruit.swift
//  UIButton+handler
//
//  Created by Pablo  on 28/10/22.
//

import Foundation
import UIKit

struct BuyFruit:GenericProtocol {
    
    typealias A = BuyFruit
    
    var picture: Currency
    
    var name: String
    
    var title: String
    
    var amount: Int
    
    var icon: Currency
    
    var gemAmount:Int?
    
   
    
    static var items: [Self] = [
        BuyFruit(picture:.Fruit,name: "MANZANAS", title: "FRUTAS ", amount: 25,icon:.Gem,gemAmount:50),
        BuyFruit(picture:.Fruit,name: "PERAS", title: "FRUTAS ", amount: 150,icon:.Gem,gemAmount:250),
        BuyFruit(picture:.Fruit,name: "MELOCOTONES", title: "FRUTAS ", amount: 325,icon:.Gem,gemAmount:500),
        BuyFruit(picture:.Fruit,name: "UVAS", title: "FRUTAS ", amount: 700,icon:.Gem,gemAmount:1000),
        BuyFruit(picture:.Fruit,name: "PLATANOS",title: "FRUTAS ", amount: 1500,icon:.Gem,gemAmount:2000),
        BuyFruit(picture:.Fruit,name: "NARANJAS",title: "FRUTAS ", amount: 2500,icon:.Gem,gemAmount:5000)]
    
}
