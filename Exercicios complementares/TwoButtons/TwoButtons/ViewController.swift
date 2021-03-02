//
//  ViewController.swift
//  TwoButtons
//
//  Created by flaviaamorim on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var txtTextFiel: UITextField!
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        TextLabel.text = txtTextFiel.text
        }
  
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        
        TextLabel.text = ""
        txtTextFiel.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

