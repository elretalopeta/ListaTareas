//
//  SecondViewController.swift
//  lista de tareas
//
//  Created by usu27 on 2/2/16.
//  Copyright © 2016 usu27. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fieldtext01: UITextField!
    @IBOutlet weak var fieldtext02: UITextField!
    
    @IBAction func añadir(sender: AnyObject) {
        Tarea.array.append(Tarea(titulo: fieldtext01.text!, descripcion : fieldtext02.text!))
        self.tabBarController?.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func touchesBegan(touches: NSSet, withEvent event:
        UIEvent) {
        self.view.endEditing(true)
    }
    */

}

