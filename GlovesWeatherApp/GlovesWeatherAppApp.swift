//
//  GlovesWeatherAppApp.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/22/22.
//

import SwiftUI

@main
struct GlovesWeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(forecast: Forecast(), weather: Weather())
        }
    }
}
