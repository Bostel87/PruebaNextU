//
//  CoViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class CoViewController: UIViewController {
    
    @IBOutlet weak var labelCon: UILabel!
    @IBOutlet weak var textDesc: UITextView!
    @IBOutlet weak var btnSrc: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewDidAppear(_ animated: Bool) {
        if InformationTableViewController.leng == "Español"{
            self.labelCon.text = "Sentencia Condicional"
            self.textDesc.text = "En programación, una sentencia condicional es una instrucción o grupo de instrucciones que se pueden ejecutar o no en función del valor de una condición. \n\nLos tipos más conocidos de sentencias condicionales son el SI..ENTONCES (if..then), el SI..ENTONCES..SI NO (if..then..else) y el SEGÚN (case o switch), aunque también podríamos mencionar al manejo de excepciones como una alternativa más moderna para evitar el anidamiento de sentencias condicionales. \n\nLas sentencias condicionales constituyen, junto con los bucles, los pilares de la programación estructurada, y su uso es una evolución de una sentencia en lenguaje ensamblador que ejecutaba la siguiente línea o no en función del valor de una condición."
            self.btnSrc.setTitle("Fuente Wikipedia", for: InformationTableViewController.normal)
        }else if InformationTableViewController.leng == "Ingles"{
            self.labelCon.text = "Conditional"
                        self.textDesc.text = "In computer science, conditional statements, conditional expressions and conditional constructs are features of a programming language, which perform different computations or actions depending on whether a programmer-specified boolean condition evaluates to true or false. Apart from the case of branch predication, this is always achieved by selectively altering the control flow based on some condition. \n\nIn imperative programming languages, the term conditional statement is usually used, whereas in functional programming, the terms conditional expression or conditional construct are preferred, because these terms all have distinct meanings. \n\nA conditional is sometimes colloquially referred to as an if-check, especially when perceived as a simple one and when its specific form is irrelevant or unknown. \n\nAlthough dynamic dispatch is not usually classified as a conditional construct, it is another way to select between alternatives at runtime."
            self.btnSrc.setTitle("Source Wikipedia", for: InformationTableViewController.normal)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    @IBAction func Src(_ sender: Any) {
        if InformationTableViewController.leng == "Español"{
            let url : URL = URL(string: "https://es.wikipedia.org/wiki/Sentencia_condicional")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }else if InformationTableViewController.leng == "Ingles"{
            let url : URL = URL(string: "https://en.wikipedia.org/wiki/Conditional_(computer_programming)")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }

    }
}
