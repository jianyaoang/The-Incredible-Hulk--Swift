//
//  LabViewController.swift
//  Notify -- Swift
//
//  Created by Jian Yao Ang on 10/31/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import Foundation
import UIKit

class LabViewController: UIViewController
{
    
    @IBOutlet var raySelectionSegmentedType: UISegmentedControl!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        raySelectionSegmentedType.selectedSegmentIndex = -1
    }
    
    
    @IBAction func onSegmentedRayTypeSelectionPressed(sender: UISegmentedControl!)
    {
        if raySelectionSegmentedType.selectedSegmentIndex == 0
        {
            let notificationCenter = NSNotificationCenter.defaultCenter()
            
            notificationCenter.postNotificationName("Gamma Ray", object: self)
        }
        else if raySelectionSegmentedType.selectedSegmentIndex == 1
        {
            let notificationCenter = NSNotificationCenter.defaultCenter()
            
            notificationCenter.postNotificationName("Vita Ray", object: self)
        }
    }
}