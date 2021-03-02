//
//  ViewController.swift
//  CommonInputControls
//
//  Created by flaviaamorim on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func buttonTapped(_ sender: Any) {
        
        print("Botao clicado")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        
        if sender.isOn {
            print("Esta ligado")
        } else {
            print("Esta desligado")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        print(sender.value)
    }
    
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        
        if let text = sender.text {
        print(text)
    }else {
        print("Cawmpo em brqanco")
    }
}
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        } else {
            print("Cawmpo em brqanco")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

