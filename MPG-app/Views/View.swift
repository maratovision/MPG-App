//
//  ViewController.swift
//  MPG-app
//
//  Created by Beks on 20/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: Controller?
    
    @IBOutlet weak var litres: UITextField!
    @IBOutlet weak var kilometres: UITextField!
    @IBOutlet weak var result: UILabel!

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        controller = Controller(viewer: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func buttonTouched(_ sender: UIButton) {
        controller?.calculateModel()
    }
    
    func update(text: String) {
        result.text = text
    }
}

