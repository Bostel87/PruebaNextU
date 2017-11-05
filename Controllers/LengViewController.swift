//
//  LengViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class LengViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
 
    @IBAction func btnIng(_ sender: Any) {
        InformationTableViewController.leng = "Ingles"
        dismiss(animated: true, completion: nil)
    }
    
   
    @IBAction func btnEsp(_ sender: Any) {
        InformationTableViewController.leng = "Español"
        dismiss(animated: true, completion: nil)
    }

}
