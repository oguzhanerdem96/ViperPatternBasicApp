//
//  Interactor.swift
//  viperToplaCarp
//
//  Created by Oğuzhan Erdem on 7.09.2022.
//

import Foundation

class Interactor:PresenterToInteractorProtocols {
    
var presenter: InteractorToPresenterProtocols?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1) , let s2 = Int(sayi2) {
            let toplam = s1 + s2
            presenter?.PresenteraVeriGonder(sonuc: String(toplam))
        }


    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1) , let s2 = Int(sayi2) {
            let carpim = s1 * s2
            presenter?.PresenteraVeriGonder(sonuc: String(carpim))
        }
    }
    }
