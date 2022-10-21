//
//  WeatherEntryView.swift
//  WeatherSwiftUIWidgetExtension
//
//  Created by Paul Lee on 2022/10/21.
//

import SwiftUI

struct WeatherEntryView: View {
    var entry: Provider.Entry
    
    var body: some View {
        EmptyView()
    }
}

struct WeatherEntryView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherEntryView(entry: Provider.Entry(widgetData: .preview))
    }
}
