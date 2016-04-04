//
//  FirstViewController.swift
//  lista de tareas
//
//  Created by usu27 on 2/2/16.
//  Copyright © 2016 usu27. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var mitabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int { return Tarea.array.count }
    //Debe devolver el tamaño del Array de tareas
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell{
            let cell: CeldaPersonalizada = tableView.dequeueReusableCellWithIdentifier("CeldaPersonalizada") as! CeldaPersonalizada
            
            //Aquí tienes que rellenar los IBOutlets de CeldaPersonalizada con los atributos de la tarea que ocupa la posición indexPath.row en el Array
            cell.imagen02.image = Tarea.array[indexPath.row].imagen
            cell.label01.text = Tarea.array[indexPath.row].titulo
            cell.label02.text = Tarea.array[indexPath.row].descripcion
            return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection
        section: Int) -> String? { return "Tareas" }
    //Debe devolver el título de la tabla (el que quieras ponerle)
    
    override func viewWillAppear(animated: Bool){
        self.mitabla.reloadData()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            var detalle: DetailViewController = segue.destinationViewController as! DetailViewController
       
            var tareaIndex = mitabla.indexPathForSelectedRow!.row
            var tareaSeleccionada = Tarea.array[tareaIndex]
            detalle.indexs = tareaIndex
            //Aquí debes pasar el título y la descripción de la
            //tarea seleccionada a los textFields de la vista
            //DetailViewController. Recuerda que has creado dos IBOutlets.
    }
    
    func tableView(tableView: UITableView,
        editActionsForRowAtIndexPath indexPath: NSIndexPath) ->
        [AnyObject]?{
            let deleteAction = UITableViewRowAction(style: .Default,
                title: "Borrar", handler: {(action, indexPath) -> Void in
                  Tarea.array.removeAtIndex(indexPath.row)
                    self.mitabla.reloadData()
                    //Aquí borra la tarea seleccionada y recarga la tabla
            })
            
            let doneAction = UITableViewRowAction(style: .Normal,
                title: "Hecha", handler: {(action, indexPath) -> Void in
                   
                    Tarea.array[indexPath.row].imagen=UIImage(named: "done")!
                    self.mitabla.reloadData()
                    
                    //Aquí marca la tarea como Hecha y añade la imagenTick.png. Recarga la tabla
            })
            
            return [deleteAction, doneAction]
    }
    
    func tableView(tableView: UITableView, commitEditingStyle
        editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath
        indexPath: NSIndexPath){
            //VACIA
    }

 /*
    override func viewDidAppear(animated: Bool){
        self.mitabla.reloadData()
    }
 */

}


