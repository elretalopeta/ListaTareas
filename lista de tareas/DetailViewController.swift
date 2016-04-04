//
//  DetailViewController.swift
//  lista de tareas
//
//  Created by usu27 on 10/2/16.
//  Copyright © 2016 usu27. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titulo: UITextField!
    var indexs=0

    
    @IBAction func aceptar(sender: AnyObject) {
        Tarea.array[indexs].titulo=titulo.text
        Tarea.array[indexs].descripcion=descripcion.text
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelar(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var descripcion: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
