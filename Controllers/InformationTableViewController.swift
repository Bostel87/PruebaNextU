//
//  InformationTableViewController.swift
//  PruebaBP
//
//  Created by Boris Parrales on 11/4/17.
//  Copyright © 2017 Boris Parrales. All rights reserved.
//

import UIKit

class InformationTableViewController: UITableViewController {
    static var normal : UIControlState = []
    static var leng = "Español"
    var txtSecc : String?
    
    @IBOutlet weak var labelAbs: UILabel!
    @IBOutlet weak var labelAlg: UILabel!
    @IBOutlet weak var labelCla: UILabel!
    @IBOutlet weak var labelCo: UILabel!
    @IBOutlet weak var labelLo: UILabel!
    
    @IBOutlet weak var labelLeng: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //Manejo de Titulo de las Secciones
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        
        switch section {
        case 0 :
            if InformationTableViewController.leng == "Ingles"{
                self.txtSecc = "Terms"
            }else{
                self.txtSecc = "Términos"
            }
        case 1:
            if InformationTableViewController.leng == "Ingles"{
                self.txtSecc = "Settings"
            }else{
                self.txtSecc = "Configuración"
            }
            
        default:
            self.txtSecc = "No hay Dato"
        }
        
        return self.txtSecc
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if InformationTableViewController.leng == "Español" {
            self.title = "Diccionario"
            self.labelAbs.text = "Abstracción"
            self.labelAlg.text = "Algoritmo"
            self.labelCla.text = "Clase"
            self.labelCo.text = "Sentencia Condicional"
            self.labelLo.text = "Bucle"
            self.labelLeng.text = "Cambiar Idioma"
            
        }else {
            self.title = "Dictionary"
            self.labelAbs.text = "Abstraction"
            self.labelAlg.text = "Algorithm"
            self.labelCla.text = "Class"
            self.labelCo.text = "Conditional"
            self.labelLo.text = "Loop"
            self.labelLeng.text = "Change Lenguage"
           
        }
        tableView.reloadData()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

   
}
