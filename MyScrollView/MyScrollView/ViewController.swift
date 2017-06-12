//
//  ViewController.swift
//  MyScrollView
//
//  Created by KimSoo Ha on 2017-06-11.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myScrollView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        myScrollView.frame.size = view.bounds.size //Make UIView frame to bounds of view
        myScrollView.backgroundColor = UIColor.gray
        
        view.addSubview(myScrollView)
        
        
        redView.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        greenView.frame = CGRect(x: 150, y: 150, width: 150, height: 200)
        blueView.frame = CGRect(x: 40, y: 400, width: 200, height: 150)
        yellowView.frame = CGRect(x: 200, y: 600, width: 180, height: 150)
        
        
        redView.backgroundColor = UIColor.red
        greenView.backgroundColor = UIColor.green
        blueView.backgroundColor = UIColor.blue
        yellowView.backgroundColor = UIColor.yellow
        
        
        myScrollView.addSubview(redView)
        myScrollView.addSubview(greenView)
        myScrollView.addSubview(blueView)
        myScrollView.addSubview(yellowView)
        

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        a
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

