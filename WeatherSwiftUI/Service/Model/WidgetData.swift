//
//  WidgetData.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/21.
//

import Foundation

struct WidgetData: Codable {
    let location: String
    let temperature: String
    let icon: String
    let weather: String
    let minTemperature: String
    let maxTemperature: String
    let date: Date
}

extension WidgetData {
    static let preview = WidgetData(location: "서울", temperature: Double.randomTempearatureString, icon: "sun.max.fill", weather: "맑음", minTemperature: Double.randomTempearatureString, maxTemperature: Double.randomTempearatureString, date: .now)
}
