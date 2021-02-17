//
//  ViewController.swift
//  Light
//
//  Created by flaviaamorim on 17/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
}
