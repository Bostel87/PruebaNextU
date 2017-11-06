//
//  LoViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class LoViewController: UIViewController {
    
    @IBOutlet weak var labelLo: UILabel!
    @IBOutlet weak var textDesc: UITextView!
    @IBOutlet weak var btnSrc: UIButton!
    
 

    override func viewDidLoad() {
        super.viewDidLoad()

            }
    override func viewDidAppear(_ animated: Bool) {
        if InformationTableViewController.leng == "Español"{
            self.labelLo.text = "Bucle"
            
            self.textDesc.text = "Un bucle o ciclo, en programación, es una sentencia que ejecuta repetidas veces un trozo de código, hasta que la condición asignada a dicho bucle deja de cumplirse. \n\nLos tres bucles más utilizados en programación son el bucle while, el bucle for y el bucle do-while. \n\nvar numbers = 10 \n\nvar i = 1 \n\nwhile i <= 10 { \n\nprint(i) \n\ni = i + 1 \n\n} \n\n"
            self.btnSrc.setTitle("Fuente Wikipedia", for: InformationTableViewController.normal)
        }else if InformationTableViewController.leng == "Ingles"{
            self.labelLo.text = "Loop"
            self.textDesc.text = "In computer science, control flow (or flow of control) is the order in which individual statements, instructions or function calls of an imperative program are executed or evaluated. The emphasis on explicit control flow distinguishes an imperative programming language from a declarative programming language. \n\nWithin an imperative programming language, a control flow statement is a statement the execution of which results in a choice being made as to which of two or more paths to follow. For non-strict functional languages, functions and language constructs exist to achieve the same result, but they are usually not termed control flow statements. \n\nA set of statements is in turn generally structured as a block, which in addition to grouping, also defines a lexical scope. \n\nInterrupts and signals are low-level mechanisms that can alter the flow of control in a way similar to a subroutine, but usually occur as a response to some external stimulus or event (that can occur asynchronously), rather than execution of an in-line control flow statement. \n\nAt the level of machine language or assembly language, control flow instructions usually work by altering the program counter. For some central processing units (CPUs), the only control flow instructions available are conditional or unconditional branch instructions, also termed jumps. \n\nFor example a while Loop \n\nvar numbers = 10 \n\nvar i = 1 \n\nwhile i <= 10 { \n\nprint(i) \n\ni = i + 1 \n\n} \n\n"
            self.btnSrc.setTitle("Source Wikipedia", for: InformationTableViewController.normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func Src(_ sender: Any) {
        if InformationTableViewController.leng == "Español"{
            let url : URL = URL(string: "https://es.wikipedia.org/wiki/Bucle_(programaci%C3%B3n)")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }else if InformationTableViewController.leng == "Ingles"{
            let url : URL = URL(string: "https://en.wikipedia.org/wiki/Control_flow#Loops")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }

    }
}
