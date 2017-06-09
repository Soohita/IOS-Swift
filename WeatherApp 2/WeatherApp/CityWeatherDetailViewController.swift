//
//  CityWeatherDetailViewController.swift
//  WeatherApp
//
//  Created by KimSoo Ha on 2017-06-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class CityWeatherDetailViewController: UIViewController {

    var city:City = City(name: "", weather: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
    }

}
