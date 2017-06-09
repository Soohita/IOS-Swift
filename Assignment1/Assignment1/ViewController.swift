//
//  ViewController.swift
//  Assignment1
//
//  Created by KimSoo Ha on 2017-05-24.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myView: UIView = UIView(frame: CGRect.zero)
    let purpleView: UIView = UIView(frame: CGRect.zero)
    let squareButton: UIButton = UIButton (type: .system) //.system?
    let portraitButton: UIButton = UIButton (type: .system)
    let landscapeButton: UIButton = UIButton (type: .system)
    var framingViewHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var framingViewWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var purpleWidthConstraint:NSLayoutConstraint = NSLayoutConstraint.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        squareButton.setTitle("Square", for: .normal) //.normal?
        squareButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside) //self?
        view.addSubview(squareButton)
        squareButton.translatesAutoresizingMaskIntoConstraints = false
        
        portraitButton.setTitle("Portait", for: .normal)
        portraitButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(portraitButton)
        portraitButton.translatesAutoresizingMaskIntoConstraints = false
        
        landscapeButton.setTitle("Landscape", for: .normal)
        landscapeButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(landscapeButton)
        landscapeButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
    
        //Green frame
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = UIColor.green
        view.addSubview(myView)
        
        
        
        // Buttons
        
        let buttonsHorizontalContraintsFormat = "|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|" // To make the buttons same
        
        let buttonHorizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: buttonsHorizontalContraintsFormat, options: .alignAllCenterY, metrics: nil, views: ["squareButton":squareButton, "portraitButton":portraitButton, "landscapeButton":landscapeButton])
        
        NSLayoutConstraint.activate(buttonHorizontalContraints)
        
        
        // button constraint
        let squareButtonBottomConstraint = NSLayoutConstraint.init(item: squareButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50.0)
        squareButtonBottomConstraint.isActive = true
        
        

        
        
        // locate the square on the center
        
        let myViewCenterXContraint = NSLayoutConstraint.init(item: myView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        myViewCenterXContraint.isActive = true
        
        let myViewCenterYContraint = NSLayoutConstraint.init(item: myView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        myViewCenterYContraint.isActive  = true
        
        
        // Width and height of green box
        
        framingViewHeightConstraint = NSLayoutConstraint.init(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewHeightConstraint.isActive = true
        
        framingViewWidthConstraint = NSLayoutConstraint.init(item: myView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewWidthConstraint.isActive = true
        
        
       
        
        
    
        //Three blue frames

        
        let blueFrame1 = CGRect(x: 225, y: 150, width: 50, height: 50)
        let blueFrame2 = CGRect.zero
        let blueFrame3 = CGRect.zero
        

        let blueView1 = UIView(frame: blueFrame1)
        let blueView2 = UIView(frame: blueFrame2)
        let blueView3 = UIView(frame: blueFrame3)
        
        
        blueView1.backgroundColor = UIColor.blue
        blueView2.backgroundColor = UIColor.blue
        blueView3.backgroundColor = UIColor.blue
        
        
        myView.addSubview(blueView1)
        myView.addSubview(blueView2)
        myView.addSubview(blueView3)
        
        
//        blueView1.translatesAutoresizingMaskIntoConstraints = false
//        blueView2.translatesAutoresizingMaskIntoConstraints = false
//        blueView3.translatesAutoresizingMaskIntoConstraints = false
//        
//        
//        
//        let blueBoxVirticalContraintsFormat = "|[blueView1(==blueView2)][blueView2(==blueView3)][blueView3]|"
//        
//        let blueBoxVirticalContraints = NSLayoutConstraint.constraints(withVisualFormat: blueBoxVirticalContraintsFormat, options: .alignAllCenterX, metrics: nil, views: ["blueView1":blueView1, "blueView2":blueView2, "blueView3":blueView3])
//        
//        NSLayoutConstraint.activate(blueBoxVirticalContraints)
//        
//        
//        let blueBoxTopConstraint = NSLayoutConstraint.init(item: blueView1, attribute: .bottom, relatedBy: .equal, toItem: myView, attribute: .bottom, multiplier: 1.0, constant: -50.0)
//        blueBoxTopConstraint.isActive = true
//        
//        
//        
//       
//        
//        let blueBoxheightConstraint = NSLayoutConstraint.init(item: blueView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
//        blueBoxheightConstraint.isActive = true
//        
//        let blueBoxWidthConstraint = NSLayoutConstraint.init(item: blueView1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
//        blueBoxWidthConstraint.isActive = true
        
        
        //Purple box

        
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.backgroundColor = UIColor.purple
        myView.addSubview(purpleView)
        
        
        
        //Constrain of purple box
        
        let purpleBottomContraint = NSLayoutConstraint.init(item: purpleView, attribute: .bottom, relatedBy: .equal, toItem: myView, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        purpleBottomContraint.isActive = true
        
        let purpleRightContraint = NSLayoutConstraint.init(item: purpleView, attribute: .trailingMargin, relatedBy: .equal, toItem: myView, attribute: .trailingMargin, multiplier: 1.0, constant: -20.0)
        purpleRightContraint.isActive  = true
        
        
        // Width and Height of purple box
        
        let purpleHeightConstraint = NSLayoutConstraint.init(item: purpleView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)                                                                     //Why it has to be 'nil' and '.notAnAttribute'.
        purpleHeightConstraint.isActive = true
        
        purpleWidthConstraint = NSLayoutConstraint.init(item: purpleView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: framingViewWidthConstraint.constant / 100 * 75)
        purpleWidthConstraint.isActive = true
        
        
        

        
        //Red view on the top
        let redFrame = CGRect.zero
        let redView = UIView(frame: redFrame)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.red
        myView.addSubview(redView)
//        
        //Cosnstrain for red box
        let redTopContraint = NSLayoutConstraint.init(item: redView, attribute: .top, relatedBy: .equal, toItem: myView, attribute: .top, multiplier: 1.0, constant: 20.0)
        redTopContraint.isActive = true
        
        let redRightContraint = NSLayoutConstraint.init(item: redView, attribute: .trailingMargin, relatedBy: .equal, toItem: myView, attribute: .trailingMargin, multiplier: 1.0, constant: -20.0)
        redRightContraint.isActive  = true
        
        
        //height and width
        
        let redHeightConstraint = NSLayoutConstraint.init(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)                                                                     //Why it has to be 'nil' and '.notAnAttribute'.
        redHeightConstraint.isActive = true
        
        let redWidthConstraint = NSLayoutConstraint.init(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0)
        redWidthConstraint.isActive = true
        
        
        
        
        // Orange frames in red frame
        let orangeFrame1 = CGRect(x: 10, y: 10, width: 70, height: 30)
        let orangeFrame2 = CGRect(x: 90, y: 10, width: 50, height: 30)
        
        let orangeView1 = UIView(frame: orangeFrame1)
        let orangeView2 = UIView(frame: orangeFrame2)
        
        orangeView1.backgroundColor = UIColor.orange
        orangeView2.backgroundColor = UIColor.orange
        
        redView.addSubview(orangeView1)
        redView.addSubview(orangeView2)
        
        } // viewDidRoad
    
    
    
        // Resizing scale
        func resizeFramingView(_ sender: UIButton){
            var newWidth: CGFloat = 0.0
            var newHeight: CGFloat = 0.0
            if (sender == self.squareButton) {
                newWidth = 500.0
                newHeight = 500.0
            } else if (sender == self.portraitButton) {
                newWidth = 350.0
                newHeight = 550.0
            } else if (sender == self.landscapeButton) {
                newWidth = 900.0
                newHeight = 300.0
            }
       
        
            UIView.animate(withDuration: 2.0) {
                self.framingViewHeightConstraint.constant = newHeight
                self.framingViewWidthConstraint.constant = newWidth
                self.purpleWidthConstraint.constant = newWidth * 75 / 100
                self.view.layoutIfNeeded()
                
            }// animation
        
        }// func
        




//    let framingView: UIView = UIView(frame: CGRect.zero)
//    let squareButton: UIButton = UIButton(type: .system)
//    let portraitButton: UIButton = UIButton(type: .system)
//    let landscapeButton: UIButton = UIButton(type: .system)
//    var framingViewHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
//    var framingViewWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        squareButton.setTitle("Square", for: .normal)
//        squareButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
//        view.addSubview(squareButton)
//        squareButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        portraitButton.setTitle("Portrait", for: .normal)
//        portraitButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
//        view.addSubview(portraitButton)
//        portraitButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        landscapeButton.setTitle("Landscape", for: .normal)
//        landscapeButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
//        view.addSubview(landscapeButton)
//        landscapeButton.translatesAutoresizingMaskIntoConstraints = false
//        
//        framingView.translatesAutoresizingMaskIntoConstraints = false
//        framingView.backgroundColor = UIColor.green
//        view.addSubview(framingView)
//        
//        let buttonsHorizontalContraintsFormat = "|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|"
//        
//        let buttonsHorizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: buttonsHorizontalContraintsFormat, options: .alignAllCenterY, metrics: nil, views: ["squareButton":squareButton, "portraitButton":portraitButton, "landscapeButton":landscapeButton])
//        
//        NSLayoutConstraint.activate(buttonsHorizontalContraints)
//        
//        let squareButtonBottomConstraint = NSLayoutConstraint.init(item: squareButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50.0)
//        squareButtonBottomConstraint.isActive = true
//        
//        let framingViewCenterXContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
//        framingViewCenterXContraint.isActive = true
//        
//        let framingViewCenterYContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
//        
//        framingViewCenterYContraint.isActive = true
//        
//        framingViewHeightConstraint = NSLayoutConstraint.init(item: framingView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
//        framingViewHeightConstraint.isActive = true
//        
//        framingViewWidthConstraint = NSLayoutConstraint.init(item: framingView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
//        framingViewWidthConstraint.isActive = true
//        
//    }
//    
//    func resizeFramingView(_ sender: UIButton) {
//        var newWidth: CGFloat = 0.0
//        var newHeight: CGFloat = 0.0
//        if (sender == self.squareButton) {
//            newWidth = 500.0
//            newHeight = 500.0
//        } else if (sender == self.portraitButton) {
//            newWidth = 350.0
//            newHeight = 550.0
//        } else if (sender == self.landscapeButton) {
//            newWidth = 900.0
//            newHeight = 300.0
//        }
//        
//        UIView.animate(withDuration: 2.0) {
//            self.framingViewHeightConstraint.constant = newHeight
//            self.framingViewWidthConstraint.constant = newWidth
//            self.view.layoutIfNeeded()
//        }
//    }
//

}

