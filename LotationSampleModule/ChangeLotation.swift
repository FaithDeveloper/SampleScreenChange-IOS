//
//  ChangeLotation.swift
//  LotationSampleModule
//
//  Created by sigong_shin on 2017. 11. 10..
//  Copyright © 2017년 kcs. All rights reserved.
//

import UIKit

class ChangeLotation: UIViewController {
    
    var isportrait = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         setLotation()
    }
    
    func setLotation(){
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            
            isportrait = delegate.orientationLock != UIInterfaceOrientationMask.portrait
            
            let value: Int
            if(isportrait){
                delegate.orientationLock = UIInterfaceOrientationMask.portrait
                value = UIInterfaceOrientation.portrait.rawValue
            }else{
                delegate.orientationLock = UIInterfaceOrientationMask.landscape
                value = UIInterfaceOrientation.landscapeLeft.rawValue
            }
            UIDevice.current.setValue(value, forKey: "orientation")
            btnPush.text = (isportrait ? "portrait" : "landscape").uppercased()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLotation(_ sender: Any) {
       self.view.removeFromSuperview()
    }
    @IBOutlet weak var btnPush: UILabel!
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        if isportrait {
            return UIInterfaceOrientationMask.portrait
        }else{
            return UIInterfaceOrientationMask.landscapeLeft
        }
    }
    
    override var shouldAutorotate: Bool{
        return false
    }
}
