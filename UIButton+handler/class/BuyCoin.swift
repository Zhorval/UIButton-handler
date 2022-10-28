//
//  BuyCoin.swift
//  UIButton+handler
//
//  Created by Pablo  on 28/10/22.
//

import Foundation
import UIKit

struct BuyCoins:GenericProtocol {
    
    typealias A = BuyCoins
    
    var picture: Currency
    
    var name: String
    
    var title: String
    
    var amount: Int
    
    var icon: Currency
    
    var gemAmount:Int?
    
    var get:[BuyCoins] {
        Self.items
    }
    
    static var items: [Self] = [
        BuyCoins(picture:.Euro,name: "EUROS", title: "MONEDAS" , amount: 2000,icon:.Gem,gemAmount:40),
        BuyCoins(picture:.Dolar,name: "DOLARES", title: "MONEDAS ", amount: 11600,icon:.Gem,gemAmount:200),
        BuyCoins(picture:.Lira,name: "LIRAS", title: "MONEDAS ", amount: 24000,icon:.Gem,gemAmount:400),
        BuyCoins(picture:.Libra,name: "LIBRA", title: "MONEDAS ", amount: 50000,icon:.Gem,gemAmount:800),
        BuyCoins(picture:.Gem,name: "YEN",title: "MONEDAS ", amount: 106000,icon:.Gem,gemAmount:1600),
        BuyCoins(picture:.Gem,name: "PESETAS :)",title: "MONEDAS ", amount: 280000,icon:.Gem,gemAmount:4000)]
    
    
}

