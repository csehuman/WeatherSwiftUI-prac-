//
//  FileManager+SharedContainer.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/21.
//

import Foundation

extension FileManager {
    static var sharedContainerURL: URL {
        return FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "group.com.paulkisq.WeatherSwiftUI.contents")!
    }
}
