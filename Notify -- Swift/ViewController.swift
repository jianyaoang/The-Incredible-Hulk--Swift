//
//  ViewController.swift
//  Notify -- Swift
//
//  Created by Jian Yao Ang on 10/31/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var theLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let gammaRayNotificationCenter = NSNotificationCenter.defaultCenter()
        gammaRayNotificationCenter.addObserver(self, selector: "gammaRayChangeColorAndLabel", name: "Gamma Ray", object: nil)
        
        let vitaRayNotificationCenter = NSNotificationCenter.defaultCenter()
        vitaRayNotificationCenter.addObserver(self, selector: "vitaRayChangeLabel", name: "Vita Ray", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    func gammaRayChangeColorAndLabel(){
        
        theLabel.text = "You don't like me when I'm angry!"
        self.view.backgroundColor = UIColor.greenColor()
    }
    
    func vitaRayChangeLabel(){
        
        theLabel.text = "what....lab process fail."
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
}

