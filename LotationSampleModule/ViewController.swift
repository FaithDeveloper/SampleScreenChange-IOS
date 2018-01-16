//
//  ViewController.swift
//  LotationSampleModule
//
//  Created by sigong_shin on 2017. 11. 10..
//  Copyright © 2017년 kcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBAction func actionView(_ sender: Any) {
        let popOverVC =  self.storyboard?.instantiateViewController(withIdentifier: "ChangeLotation") as! ChangeLotation
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = (self.view.frame)
        
        self.view.addSubview(popOverVC.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    

}

