//
//  WeatherSwiftUIWidget.swift
//  WeatherSwiftUIWidget
//
//  Created by Paul Lee on 2022/10/21.
//

import WidgetKit
import SwiftUI

@main
struct WeatherSwiftUIWidget: Widget {
    let kind: String = "WeatherSwiftUIWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WeatherEntryView(entry: entry)
        }
        .configurationDisplayName("날씨 위젯")
        .description("현재 날씨를 확인할 수 있어요 :)")
        .supportedFamilies([.systemSmall])
    }
}

struct WeatherSwiftUIWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherEntryView(entry: WeatherEntry(widgetData: .preview))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
