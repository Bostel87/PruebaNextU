//
//  AlgViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class AlgViewController: UIViewController {

    @IBOutlet weak var labelAlg: UILabel!
    @IBOutlet weak var textDesc: UITextView!
    @IBOutlet weak var btnSrc: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewDidAppear(_ animated: Bool) {
        if InformationTableViewController.leng == "Español"{
            self.labelAlg.text = "Algoritmo"
            self.textDesc.text = "En matemáticas, lógica, ciencias de la computación y disciplinas relacionadas, un algoritmo (del griego y latín, dixit algorithmus y este a su vez del matemático persa Al-Juarismi)1​ es un conjunto prescrito de instrucciones o reglas bien definidas, ordenadas y finitas que permite llevar a cabo una actividad mediante pasos sucesivos que no generen dudas a quien deba hacer dicha actividad.2​ Dados un estado inicial y una entrada, siguiendo los pasos sucesivos se llega a un estado final y se obtiene una solución. Los algoritmos son el objeto de estudio de la algoritmia. \n\nEn la vida cotidiana, se emplean algoritmos frecuentemente para resolver problemas. Algunos ejemplos son los manuales de usuario, que muestran algoritmos para usar un aparato, o las instrucciones que recibe un trabajador de su patrón. Algunos ejemplos en matemática son el algoritmo de multiplicación, para calcular el producto, el algoritmo de la división para calcular el cociente de dos números, el algoritmo de Euclides para obtener el máximo común divisor de dos enteros positivos, o el método de Gauss para resolver un sistema de ecuaciones lineales. \n\nEn términos de programación, un algoritmo es una secuencia de pasos lógicos que permiten solucionar un problema."
            self.btnSrc.setTitle("Fuente Wikipedia", for: InformationTableViewController.normal)
        }else if InformationTableViewController.leng == "Ingles"{
            self.labelAlg.text = "Algorithm"
            self.textDesc.text = "In mathematics and computer science, an algorithm (/ˈælɡərɪðəm/ (About this sound listen) AL-gə-ridh-əm) is an unambiguous specification of how to solve a class of problems. Algorithms can perform calculation, data processing and automated reasoning tasks. \n\nAn algorithm is an effective method that can be expressed within a finite amount of space and time and in a well-defined formal language for calculating a function. Starting from an initial state and initial input (perhaps empty), the instructions describe a computation that, when executed, proceeds through a finite number of well-defined successive states, eventually producing !output! and terminating at a final ending state. The transition from one state to the next is not necessarily deterministic; some algorithms, known as randomized algorithms, incorporate random input. \n\nThe concept of algorithm has existed for centuries; however, a partial formalization of what would become the modern algorithm began with attempts to solve the Entscheidungsproblem (the decision problem) posed by David Hilbert in 1928. Subsequent formalizations were framed as attempts to define effective calculability or effective method; those formalizations included the Gödel–Herbrand–Kleene recursive functions of 1930, 1934 and 1935, Alonzo Church's lambda calculus of 1936, Emil Post's Formulation 1 of 1936, and Alan Turing's Turing machines of 1936–7 and 1939. Giving a formal definition of algorithms, corresponding to the intuitive notion, remains a challenging problem."
            self.btnSrc.setTitle("Source Wikipedia", for: InformationTableViewController.normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func Src(_ sender: Any) {
        if InformationTableViewController.leng == "Español"{
            let url : URL = URL(string: "https://es.wikipedia.org/wiki/Algoritmo")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }else if InformationTableViewController.leng == "Ingles"{
            let url : URL = URL(string: "https://en.wikipedia.org/wiki/Algorithm")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    

    }
}
