//
//  Router.swift
//  viperToplaCarp
//
//  Created by Oğuzhan Erdem on 7.09.2022.
//

import Foundation

class Router : PresenterToRouterProtocols{
    static func CreateModule(ref: ViewController) {
        let presenter = Presenter()
        
    //View Katmanı  değişkenleri
        ref.presenterNesnesi = presenter
    // Presenter katmanı değişkenleri
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
    //Interactor katmanı değişkenleri
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
    
    
    
}
