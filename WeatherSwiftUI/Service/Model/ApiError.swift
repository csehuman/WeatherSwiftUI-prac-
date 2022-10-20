//
//  ApiError.swift
//  WeatherSwiftUI
//
//  Created by Paul Lee on 2022/10/20.
//

import Foundation

enum ApiError: Error {
    case unknown
    case invalidUrl(String)
    case invalidResponse
    case failed(Int)
    case emptyData
}
