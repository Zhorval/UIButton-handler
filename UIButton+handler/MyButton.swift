//
//  MyButton.swift
//  UIButton+handler
//
//  Created by Pablo  on 28/10/22.
//

import Foundation
import UIKit


//MARK: BOTTON GENERICO PARA REALIZAR EL HANDLER

class MyButton<T:GenericProtocol>:UIButton {
    
    let handler:(T)->Void
    
    let data:T
    
    init(frame:CGRect,data:T,completion:@escaping(T)->Void) {
        
        self.data = data
        
        self.handler = completion

        super.init(frame: frame)
        
        self.setTitle("\(T.self)", for: .normal)
        
        self.setBackgroundImage(UIImage(named: "BlueButton")!, for: .normal)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        
        addTarget(self, action: #selector(mySelector), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: SELECTOR QUE DEVOLVERA EL GENERICO CUANDO PULSEMOS EL BOTON
    @objc func mySelector() {
        handler(data)
    }
}


extension String {
    
    /// Convert string number to decimal string number
    func convertDecimal() -> Self{
        
        guard let number = Int(self) else { return self}
        
        let nsNumber = NSNumber(value: number)
        
        let formatter = NumberFormatter()
       
        formatter.numberStyle = .decimal

        return formatter.string(from: nsNumber) ?? self
    }
}


