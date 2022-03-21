//
//  ContentView.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fetchData : FetchData
    
    var body: some View {
        
        List(fetchData.responses.data) {data in
            
            
            
            NavigationLink(
                destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                label: { WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)})
            
        }
        
       Text("ur mom")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
