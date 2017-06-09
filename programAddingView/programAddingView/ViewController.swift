//
//  ViewController.swift
//  programAddingView
//
//  Created by KimSoo Ha on 2017-05-24.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let firstFram = CGRect (x:150, y:250, width:100, height:150)       //Make frame
        
        let myVeiw = UIView(frame: firstFram)
        
        myVeiw.backgroundColor = UIColor.cyan //Set background color
        
        
        view.addSubview(myVeiw)
    }


}

