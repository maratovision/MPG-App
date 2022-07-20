//
//  Controller.swift
//  MPG-app
//
//  Created by Beks on 20/7/22.
//

import Foundation


class Controller{
    
    let model: Model
    
    init(viewer: ViewController){
        model = Model(viewer: viewer)
    }
    
    func calculateModel() {
        model.result()
    }
}
