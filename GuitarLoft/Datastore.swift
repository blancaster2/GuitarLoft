//
//  Datastore.swift
//  GuitarLoft
//
//  Created by Brandon Lancaster on 9/22/16.
//  Copyright © 2016 Ameren. All rights reserved.
//

import UIKit

class Datastore {
    
    var guitars = [
        Guitar(image: "GibsonGuitar"),
        Guitar(image: "FenderGuitar"),
        Guitar(image: "PRS"),
        Guitar(image: "JacksonGuitar"),
        Guitar(image: "EpiphoneGuitar"),
        Guitar(image: "IbanezGuitar"),
        Guitar(image: "SchecterGuitar")

    ]
    
    var brands = [
        Brand(name: "Gibson"),
        Brand(name: "Fender"),
        Brand(name: "PRS"),
        Brand(name: "Jackson"),
        Brand(name: "Epiphone"),
        Brand(name: "Ibanez"),
        Brand(name: "Schecter")
    ]
    
    var gibsonElectric = [
        GibsonElectric(image: "LesPaulElectric"),
        GibsonElectric(image: "SGElectric"),
        GibsonElectric(image: "ESElectric"),
        GibsonElectric(image: "ExplorerElectric"),
        GibsonElectric(image: "FlyingVElectric")
    ]
    
    var gibsonGuitars = [
        Brand(name: "Les Paul"),
        Brand(name: "SG"),
        Brand(name: "ES"),
        Brand(name: "Explorer"),
        Brand(name: "Flying V"),
        
    ]
    
    
    
}
