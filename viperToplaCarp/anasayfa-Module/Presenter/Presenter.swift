//
//  Presenter.swift
//  viperToplaCarp
//
//  Created by Oğuzhan Erdem on 7.09.2022.
//

import Foundation

class Presenter:ViewToPresenterProtocols {
    var interactor: PresenterToInteractorProtocols?
    
    var view: PresenterToViewProtocols?
    
    func toplamaYap(sayi1: String, sayi2: String) {
        interactor?.topla(sayi1: sayi1, sayi2: sayi2)
    }
    
    func carpmaYap(sayi1: String, sayi2: String) {
        interactor?.carp(sayi1: sayi1, sayi2: sayi2)
    }
    
   
   
    
}

extension Presenter:InteractorToPresenterProtocols {
    func PresenteraVeriGonder(sonuc: String) {
        view?.VieweVeriGonder(sonuc: sonuc)
                    
    }
    
    
}
