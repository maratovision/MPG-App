//
//  Model.swift
//  MPG-app
//
//  Created by Beks on 20/7/22.
//

import Foundation
import UIKit


class Model{
    
    private let viewer: ViewController
    private let calculate: Calculate


    
    init(viewer: ViewController){
        self.viewer = viewer
        calculate = Calculate()
    }
    
    func result() {
        let litr = Double(viewer.litres.text ?? "1") ?? 1
        let km = Double(viewer.kilometres.text ?? "2") ?? 2
        let result = calculate.calculating(litr: litr, km: km)
        viewer.update(text: result)
    }
    
}
