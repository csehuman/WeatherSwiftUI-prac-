//
//  WeatherSwiftUIApp.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

@main
struct WeatherSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
        }
    }
}
