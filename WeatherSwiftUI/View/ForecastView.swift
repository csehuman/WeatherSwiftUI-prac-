//
//  ForecastView.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

struct ForecastView: View {
    @EnvironmentObject var service: WeatherService
     
    var body: some View {
        ForEach(service.forecastList ?? []) { forecast in
            HStack {
                VStack {
                    Text(forecast.date)
                    Text(forecast.time)
                }
                .font(.caption)
                
                Spacer()
                
                Image(systemName: forecast.icon)
                    .font(.title3)
                    .symbolRenderingMode(.multicolor)
                
                Text(forecast.weather)
                    .font(.title3)
                
                Spacer()
                
                Text(forecast.temperature)
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .frame(minWidth: 70, alignment: .trailing)
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForecastView()
        }
        .preferredColorScheme(.dark)
        .environmentObject(WeatherService.preview)
    }
}
