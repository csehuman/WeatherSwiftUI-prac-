//
//  MainView.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            WeatherContentView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
