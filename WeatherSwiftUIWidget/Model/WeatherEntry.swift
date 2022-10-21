//
//  WeatherEntry.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/21.
//

import Foundation
import WidgetKit

struct WeatherEntry: TimelineEntry {
    let widgetData: WidgetData
    
    var date: Date {
        widgetData.date
    }
}
