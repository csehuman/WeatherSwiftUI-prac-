//
//  WeatherSwiftUIApp.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

@main
struct WeatherSwiftUIApp: App {
    let service = WeatherService()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
                .environmentObject(service)
        }
    }
}
