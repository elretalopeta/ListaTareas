//
//  Tarea.swift
//  lista de tareas
//
//  Created by usu27 on 2/2/16.
//  Copyright © 2016 usu27. All rights reserved.
//

import UIKit
 //Array Global
class Tarea: NSObject {

    static var array:[Tarea]=[] //var array:[String]!
    
    //Atributos
    var titulo: String!
    var descripcion: String!
    var realizada: Bool!
    var imagen : UIImage = UIImage(named:"tarea.png")!
    
    //Constructor
    init(titulo: String, descripcion:String){
        self.titulo = titulo
        self.descripcion = descripcion
    }
}
