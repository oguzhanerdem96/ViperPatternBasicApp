//
//  Protocols.swift
//  viperToplaCarp
//
//  Created by Oğuzhan Erdem on 7.09.2022.
//

import Foundation

// Ana Protocoller

protocol ViewToPresenterProtocols {
    
    var interactor:PresenterToInteractorProtocols? { get set }
    var view:PresenterToViewProtocols?{ get set }
    
    func toplamaYap(sayi1:String ,sayi2:String)
    func carpmaYap(sayi1:String ,sayi2:String)
    
    
}
protocol PresenterToInteractorProtocols {
    
    var presenter:InteractorToPresenterProtocols? { get set}
    
    
    func topla(sayi1:String, sayi2:String)
    func carp(sayi1:String, sayi2:String)

}


// Taşıyıcı Protocoller
 
protocol InteractorToPresenterProtocols {
    func PresenteraVeriGonder(sonuc:String)
    
}
protocol PresenterToViewProtocols {
    func VieweVeriGonder(sonuc:String)
}

protocol PresenterToRouterProtocols {
    static func CreateModule(ref:ViewController)
}
