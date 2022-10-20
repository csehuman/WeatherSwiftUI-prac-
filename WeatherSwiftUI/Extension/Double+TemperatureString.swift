//
//  Double+TemperatureString.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import Foundation

fileprivate let formatter: MeasurementFormatter = {
    let f = MeasurementFormatter()
    f.numberFormatter.maximumFractionDigits = 0
    f.unitOptions = .temperatureWithoutUnit
    return f
}()

extension Double {
    var temperatureString: String {
        let temperature = Measurement<UnitTemperature>(value: self, unit: .celsius)
        return formatter.string(from: temperature)
    }
    
    static var randomTempearatureString: String {
        return Double.random(in: -10...30).temperatureString
    }
}
