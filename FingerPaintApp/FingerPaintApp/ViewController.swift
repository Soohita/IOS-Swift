//
//  ViewController.swift
//  FingerPaintApp
//
//  Created by KimSoo Ha on 2017-06-06.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var lastPoint = CGPoint.zero
    
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
    var blue:CGFloat = 0.0
    
    var brushWidth:CGFloat = 5.0
    var opacity:CGFloat = 1.0
    
    var swipted = false
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imageView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }


    @IBAction func reset(_ sender: Any) {
        self.imageView.image = nil
    }
    
    @IBAction func erase(_ sender: Any) {
        (red,green,blue) = (1,1,1)
    }
    
    @IBAction func colors(_ sender: AnyObject) {
        if sender.tag == 0{
            (red,green,blue) = (0,0,0)
        }else if sender.tag == 1 {
            (red,green,blue) = (1,0,0)
        }else if sender.tag == 2 {
            (red,green,blue) = (1,102.0 / 255.0,0)
        }else if sender.tag == 3 {
            (red,green,blue) = (1,1,0)
        }else if sender.tag == 4 {
            (red,green,blue) = (0,1,0)
        }else if sender.tag == 5 {
            (red,green,blue) = (0,0,1)
        }else if sender.tag == 6 {
            (red,green,blue) = (0,0,0)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swipted = false
        
        if let touch = touches.first{
            lastPoint = touch.location(in: self.view)
        }
    }
    
    
    
    func drawLineFrom(fromPoint:CGPoint,toPoint:CGPoint){
        UIGraphicsBeginImageContext(self.view.frame.size)
        let context = UIGraphicsGetCurrentContext()
        imageView.image?.draw(in: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        context?.move(to: CGPoint(x:fromPoint.x, y:fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setLineWidth(brushWidth)
        context?.setStrokeColor(UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor)
        context?.strokePath()
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setAlpha(opacity)
        
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swipted = true
        
        if let touch = touches.first{
            let currentPoint = touch.location(in: self.view)
            drawLineFrom(fromPoint: lastPoint, toPoint: currentPoint)
            
            lastPoint = currentPoint
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swipted {
            drawLineFrom(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

