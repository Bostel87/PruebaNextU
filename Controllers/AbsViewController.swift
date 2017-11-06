//
//  AbsViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class AbsViewController: UIViewController {
    
    @IBOutlet weak var labelAbs: UILabel!
    @IBOutlet weak var textDesc: UITextView!
    @IBOutlet weak var btnSrc: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        if InformationTableViewController.leng == "Español"{
            self.labelAbs.text = "Abstracción"
            self.textDesc.text = "La Abstracción consiste en aislar un elemento de su contexto o del resto de los elementos que lo acompañan. En programación, el término se refiere al énfasis en el ¿qué hace? más que en el ¿cómo lo hace? (característica de caja negra. El común denominador en la evolución de los lenguajes de programación, desde los clásicos o imperativos hasta los orientados a objetos, ha sido el nivel de abstracción del que cada uno de ellos hacen uso \n\nLos lenguajes de programación son las herramientas mediante las cuales los diseñadores de lenguajes pueden implementar los modelos abstractos. La abstracción ofrecida por los lenguajes de programación se puede dividir en dos categorías: abstracción de datos (pertenecientes a los datos) y abstracción de control (perteneciente a las estructuras de control).) \n\nLos diferentes paradigmas de programación han aumentado su nivel de abstracción, comenzando desde los lenguajes de máquina, lo más próximo al ordenador y más lejano a la comprensión humana; pasando por los lenguajes de comandos, los imperativos, la orientación a objetos (POO), la Programación Orientada a Aspectos (POA); u otros paradigmas como la programación declarativa, etc. \n\nLa abstracción encarada desde el punto de vista de la programación orientada a objetos expresa las características esenciales de un objeto, las cuales distinguen al objeto de los demás. Además de distinguir entre los objetos provee límites conceptuales. Entonces se puede decir que la encapsulación separa las características esenciales de las no esenciales dentro de un objeto. Si un objeto tiene más características de las necesarias los mismos resultarán difíciles de usar, modificar, construir y comprender sobre todo cuando es un método de número entero con terminación fraccionaria."
            self.btnSrc.setTitle("Fuente Wikipedia", for: InformationTableViewController.normal)
        }else if InformationTableViewController.leng == "Ingles"{
            self.labelAbs.text = "Abstraction"
            self.textDesc.text = "In software engineering and computer science, abstraction is a technique for arranging complexity of computer systems. It works by establishing a level of complexity on which a person interacts with the system, suppressing the more complex details below the current level. The programmer works with an idealized interface (usually well defined) and can add additional levels of functionality that would otherwise be too complex to handle. For an example, a programmer writing code that involves numerical operations may not be interested in the way numbers are represented in the underlying hardware (e.g. whether they're 16 bit or 32 bit integers), and where those details have been suppressed it can be said that they were abstracted away, leaving simply numbers with which the programmer can work. In addition, a task of sending an email message across continents would be extremely complex if the programmer had to start with a piece of fiber optic cable and basic hardware components. By using layers of complexity that have been created to abstract away the physical cables and network layout, and presenting the programmer with a virtual data channel, this task is manageable. \n\nAbstraction can apply to control or to data: Control abstraction is the abstraction of actions while data abstraction is that of data structures. \n\n* Control abstraction involves the use of subroutines and control flow abstractions \n\n* Data abstraction allows handling pieces of data in meaningful ways. For example, it is the basic motivation behind the datatype. \n\nThe notion of an object in object-oriented programming can be viewed as a way to combine abstractions of data and code. \n\nThe same abstract definition can be used as a common interface for a family of objects with different implementations and behaviors but which share the same meaning. The inheritance mechanism in object-oriented programming can be used to define an abstract class as the common interface."
            self.btnSrc.setTitle("Source Wikipedia", for: InformationTableViewController.normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        @IBAction func Src(_ sender: Any) {
        if InformationTableViewController.leng == "Español"{
        let url : URL = URL(string: "https://es.wikipedia.org/wiki/Abstracci%C3%B3n_(inform%C3%A1tica)")!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }else if InformationTableViewController.leng == "Ingles"{
            let url : URL = URL(string: "https://en.wikipedia.org/wiki/Abstraction_(software_engineering)")!
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
