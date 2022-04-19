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
    @State var cityName : String = "Philadelphia"
    @State var stateName : String = "Pennsylvania"
    
    var body: some Scene {
        WindowGroup {
            ContentView(stateName: $stateName, cityName: $cityName)
                .environmentObject(fetchData)
        }
    }
}
