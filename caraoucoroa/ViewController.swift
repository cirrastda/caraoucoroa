//
//  ViewController.swift
//  caraoucoroa
//
//  Created by Anderson Matuchenko on 26/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segResultado" {
            let vcResultado = segue.destination as! ResultadoViewController
            vcResultado.imagem = vcResultado.sorteia();
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

