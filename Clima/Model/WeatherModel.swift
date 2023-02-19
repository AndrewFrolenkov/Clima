//
//  WeatherModel.swift
//  Clima
//
//  Created by Андрей Фроленков on 17.02.23.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    var conditionName: String {
        
        switch conditionId {
            
        case 200...232:
            return "cloud.bolt.circle"
        case 300...321:
            return "cloud.drizzle.circle"
        case 500...531:
            return "cloud.rain.circle"
        case 600...622:
            return "snowflake"
        case 701...781:
            return "smoke"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud.circle"
        }
    }
    
}