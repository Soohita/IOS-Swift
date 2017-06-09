//
//  ViewController2.swift
//  Navigation
//
//  Created by KimSoo Ha on 2017-05-31.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        button.backgroundColor = UIColor.cyan
        button.addTarget(self, action: #selector(popVC), for: .touchUpInside)
        
        
        self.navigationController?.isToolbarHidden = false
        
    }
    
    func popVC(){
        self.navigationController?.popViewController(animated: true)
    }



}
