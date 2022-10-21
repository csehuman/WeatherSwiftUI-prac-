//
//  MainView.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var service: WeatherService
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            if service.updating {
                ProgressView()
            } else if let _ = service.lastError {
                ErrorView()
            } else {
                WeatherContentView()
            }
        }
        .animation(.easeInOut, value: service.updating)
        .onAppear {
            service.fetch()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(WeatherService.preview)
    }
}
