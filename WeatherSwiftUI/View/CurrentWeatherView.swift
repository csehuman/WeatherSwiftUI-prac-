//
//  CurrentWeatherView.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

struct CurrentWeatherView: View {
    let model: CurrentWeather
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: model.icon)
                Text(model.weather)
            }
            .font(.largeTitle)
            
            HStack(spacing: 20) {
                Label(model.maxTemperature, systemImage: "arrow.up")
                Label(model.minTemperature, systemImage: "arrow.down")
            }
            
            HStack(alignment: .lastTextBaseline) {
                Text(model.temperature)
                    .font(.system(size: 120))
                    .fontWeight(.ultraLight)
                .minimumScaleFactor(0.5)
                
                Spacer()
                
                HStack {
                    Image(systemName: "sunrise")
                        .symbolRenderingMode(.multicolor)
                    Text(model.sunrise)
                    
                    Image(systemName: "sunset")
                        .symbolRenderingMode(.multicolor)
                    Text(model.sunset)
                }
                .font(.caption)
            }
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(model: .preview)
            .preferredColorScheme(.dark)
    }
}
