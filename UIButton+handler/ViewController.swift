//
//  ViewController.swift
//  UIButton+handler
//
//  Created by Pablo  on 28/10/22.
//

import UIKit


protocol GenericProtocol {
    
    static var items:[Self]        { get }
    var picture:Currency            { get }
    var name:String                { get }
    var title:String               { get }
    var amount:Int                 { get }
    var gemAmount:Int?             { get }
    var icon:Currency              { get }
}

 enum Currency:String {
    case Gem
    case Coin
    case Fruit
    case Dolar
    case Euro
     case Lira
     case Libra
}



class ViewController: UIViewController {

    let screen:CGRect = UIScreen.main.bounds
    
    let fruit:[BuyFruit] = BuyFruit.items
    let gem:[BuyGem]     = BuyGem.items
    let coin:[BuyCoins]  = BuyCoins.items

    var viewGeneral = UIView()
    var viewDetails = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         viewGeneral = UIView(frame: CGRect(x: 0, y: 0, width: screen.width, height: screen.height*0.4))
         viewDetails = UIView(frame: CGRect(x: 0, y: screen.height*0.6, width: screen.width, height: screen.height*0.4))
         view.addSubview(viewGeneral)
         view.addSubview(viewDetails)
        
        let v1 = UIView(frame: CGRect(x: 20, y: screen.height/2, width: 100, height: 50))
       
        let v2 = UIView(frame: CGRect(x: screen.width/2-v1.frame.width/2, y: screen.height/2, width: 100, height: 50))
       
        let v3 = UIView(frame: CGRect(x: screen.maxX - v2.frame.width, y: screen.height/2, width: 100, height: 50))
        
        let button1 = MyButton(frame: v1.frame, data: fruit[Int.random(in: (0...3))], completion:  { [self] value in
            
            viewGeneral.addSubview(convertData(data: value))
            
            let textView = UITextView(frame: viewDetails.bounds)
            textView.text = "\(value)"
            viewDetails.addSubview(textView)
        })
        button1.accessibilityAttributedValue
        let button2 = MyButton(frame: v2.frame, data: gem[Int.random(in: (0...3))], completion:  {  [self] value in
            

            viewGeneral.addSubview(convertData(data: value))
            let textView = UITextView(frame: viewDetails.bounds)
            textView.text = "\(value)"
            viewDetails.addSubview(textView)
            
        })
        let button3 = MyButton(frame: v3.frame, data: coin[Int.random(in: (0...3))], completion:  {  [self] value in

            viewGeneral.addSubview(convertData(data: value))
            let textView = UITextView(frame: viewDetails.bounds)
            textView.text = "\(value)"
            viewDetails.addSubview(textView)
        })
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
    }
    
    
    //MARK: CONVIERTO LA VISTA CON LOS DATOS DEL HANDLER DEL BOTTON
    private func convertData<T:GenericProtocol>(data:T) -> UIView{

        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: screen.width, height: screen.height/2))
            view.backgroundColor = .lightGray
            view.restorationIdentifier = "AuxView"
       
        let lbl1 = UILabel(frame: CGRect(x: screen.midX, y: screen.height*0.05, width: screen.width, height: screen.height*0.1))
            lbl1.text = data.title
            view.addSubview(lbl1)
        
        let lbl2 = UILabel(frame: CGRect(x: screen.midX, y: screen.height*0.2, width: screen.width, height: screen.height*0.1))
            lbl2.text = data.name
            view.addSubview(lbl2)
       
        
        let lbl4 = UIImageView(image:UIImage(named:data.icon.rawValue.lowercased()))
            lbl4.frame = CGRect(x: 50, y: screen.height*0.1, width: screen.width*0.2, height: screen.width*0.2)
            view.addSubview(lbl4)
        
        let lbl5 = UIImageView(image:UIImage(named:data.picture.rawValue.lowercased()))
               lbl5.frame = CGRect(x: 50, y: screen.height*0.25, width: screen.width*0.2, height: screen.width*0.2)
            view.addSubview(lbl5)
        
        return view
    }
   
}

