//
//  GlovesWeatherAppApp.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/22/22.
//

import SwiftUI

@main
struct GlovesWeatherAppApp: App {
    
    @StateObject var fetchData : FetchData = FetchData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(fetchData)
        }
    }
}
