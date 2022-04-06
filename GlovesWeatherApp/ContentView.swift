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
        
        //will have the background based on the weather behind all of the info
      
                
                
                //next couple of days and that array
                ZStack{
                    
                    NavigationView{
                        ZStack{
                            
                            List(fetchData.responses.data) {
                                
                                data in
                                if #available(iOS 15.0, *) {
                                    NavigationLink(
                                        destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                        label: {
                                            
                                            WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                            
                                            
                                        }).listRowBackground(Color.background).listRowSeparatorTint(Color.fontColor)
                                        .navigationTitle(Text("16 Day Forecast")).accentColor(Color.fontColor)
                                } else {
                                    NavigationLink(
                                        destination: DailyInfoView(weather: data.weather, response: fetchData.responses, data: data),
                                        label: {
                                            
                                            WeatherInfoView(weather: data.weather, response: fetchData.responses, data: data)
                                            
                                            
                                        }).listRowBackground(Color.background)
                                }
                            }
                            
                        }
                    }
                }
            }
            
        }
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
