//
//  City.swift
//  WeatherApp
//
//  Created by KimSoo Ha on 2017-05-31.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class City {
    
    /*
    let sunny:String = "Sunny"
    let cloudy:String = "Cloudy"
    let fog:String = "Fog"
    let rainy:String = "Rainy"
    let snowing:String = "Snowing"
    */
    
    let name: String // name of city
    let weather: String
    
    
    init(name: String, weather: String) {
        self.name = name
        self.weather = weather
    }


}
