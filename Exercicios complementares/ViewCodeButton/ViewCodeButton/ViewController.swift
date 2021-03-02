//
//  ViewController.swift
//  ViewCodeButton
//
//  Created by flaviaamorim on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Criar um botão programaticamente - equivale ao @IBOutlet
        let button = UIButton(type: .system)
        
        //2. Posiciona o botao na view
        button.frame = CGRect(x: 150, y: 400, width: 100, height: 50)
        
        //3. Atribuir o layout do botao - TODO
        
        //4. Define o titulo do botao
        button.setTitle("Clique", for: .normal)
        
        //5. Define a acao do botao
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
        //6. Colocar o botao na view
        view.addSubview(button)
    }
    
    @objc func buttonAction(_ sender: UIButton) {
        print("Botao clicado")
    }


}

