//
//  CurrentWeatherView.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        Color.yellow
            .frame(height: 200)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView()
            .preferredColorScheme(.dark)
    }
}
