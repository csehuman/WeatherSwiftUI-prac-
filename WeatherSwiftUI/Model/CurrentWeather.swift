//
//  CurrentWeather.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import Foundation
import SwiftUI

struct CurrentWeather {
    let icon: String
    let weather: String
    let temperature: String
    let maxTemperature: String
    let minTemperature: String
    let sunrise: String
    let sunset: String
    let forecastedDate: Date
}

extension CurrentWeather {
    static var preview: CurrentWeather {
        return CurrentWeather(icon: "sun.max.fill", weather: "맑음", temperature: Double.randomTempearatureString, maxTemperature: Double.randomTempearatureString, minTemperature: Double.randomTempearatureString, sunrise: "오전 6:00", sunset: "오후 6:00", forecastedDate: .now)
    }
}
