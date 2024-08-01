//
//  ColorsDetailViewController.swift
//  RandomColors
//
//  Created by Діма Турчин on 30.07.2024.
//

import UIKit

class ColorsDetailViewController: UIViewController {

    var color : UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? UIColor.white
       
    }
    


   

}
