//
//  ViewController.swift
//  viperToplaCarp
//
//  Created by Oğuzhan Erdem on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSonuc: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    
    var presenterNesnesi:ViewToPresenterProtocols?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        lblSonuc.text = "0"
        Router.CreateModule(ref: self)
        
    }

    @IBAction func btnTopla(_ sender: Any) {
        if let sayi1 = textField1.text , let sayi2 = textField2.text {
            presenterNesnesi?.toplamaYap(sayi1: sayi1, sayi2: sayi2)
                
        }
        
    }
    @IBAction func btnCarp(_ sender: Any)
    { if let sayi1 = textField1.text , let sayi2 = textField2.text {
        presenterNesnesi?.carpmaYap(sayi1: sayi1, sayi2: sayi2)
       
    }
    
    }
    
}

extension ViewController: PresenterToViewProtocols {
    func VieweVeriGonder(sonuc: String) {
        lblSonuc.text = sonuc
    }
    
    
}
