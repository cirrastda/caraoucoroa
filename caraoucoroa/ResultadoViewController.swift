//
//  ResultadoViewController.swift
//  caraoucoroa
//
//  Created by Anderson Matuchenko on 26/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    
    @IBOutlet weak var imgMoeda: UIImageView!
    
    func sorteia() -> String {
        let number = Int.random(in: 0...1);
        var result = "";
        switch(number) {
          case 0:
            result = "cara"
            break;
          case 1:
            result = "coroa"
            break;
          default:
            result = "undefined"
        }
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultado = sorteia()
        imgMoeda.image = UIImage(named: "moeda_"+resultado+".png")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnVoltar_Click(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
