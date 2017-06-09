//
//  CityViewController.swift
//  WeatherApp
//
//  Created by KimSoo Ha on 2017-06-01.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    
    var city:City = City(name: "", weather: "")

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .blue
        
  
        print(city.name, city.weather)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.cyan
        button.addTarget(self, action: #selector(nextVC), for:.touchUpInside)
        view.addSubview(button)
        view.backgroundColor = UIColor.blue
        
        self.view.addSubview(button)
        
    }

    
    func nextVC(_ sender:UIButton){
        let secondVC = CityWeatherDetailViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
