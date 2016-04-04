//
//  CeldaPersonalizada.swift
//  lista de tareas
//
//  Created by usu27 on 2/2/16.
//  Copyright © 2016 usu27. All rights reserved.
//

import UIKit

class CeldaPersonalizada: UITableViewCell {

    //Que es DataSource y Delegate??
    

    
    @IBOutlet weak var imagen01: UIImageView!
    @IBOutlet weak var imagen02: UIImageView!
    
    @IBOutlet weak var label01: UILabel!
    @IBOutlet weak var label02: UILabel!
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier:
        String?){
            super.init(style: style, reuseIdentifier:
                reuseIdentifier)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    // Configure the view for the selected state
}
