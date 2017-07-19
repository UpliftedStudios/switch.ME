//
//  ViewController.swift
//  Switch.ME
//
//  Created by Raphael M. Hidalgo on 7/17/17.
//  Copyright © 2017 UpliftedStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redCircle: UIImageView!
    @IBOutlet weak var yellowCircle: UIImageView!
    @IBOutlet weak var blueCircle: UIImageView!
    @IBOutlet weak var label: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.isHidden = true
        blueCircle.isHidden = true
        yellowCircle.isHidden = true
        

    }


    @IBAction func btnPressed(_ sender: UIButton) {
        
        label.text = "Switch Me!"
        
        sender.tag += 1
        if sender.tag > 4 { sender.tag = 0 }
        
        switch sender.tag {
        case 1:
            redCircle.isHidden = false
        case 2:
            blueCircle.isHidden = false
            redCircle.isHidden = true
        case 3:
            yellowCircle.isHidden = false
            blueCircle.isHidden = true
        case 4:
            yellowCircle.isHidden = true
        default:
            redCircle.isHidden = false
            blueCircle.isHidden = false
            yellowCircle.isHidden = false
            
        }
    }
    
    
    
}
