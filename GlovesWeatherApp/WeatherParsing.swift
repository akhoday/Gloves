//
//  WeatherParsing.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/23/22.
//

import Foundation

class FetchData : ObservableObject{
    
@Published var forecasts : Forecast = Forecast()

init(){
    
    let url = URL(string: "https://api.weatherbit.io/v2.0/forecast/daily?city=/(city_name)&country=US&state=/(state_code)&units=I&key=b4da1afe1c3b442ab357323b6251da78")!
    
    URLSession.shared.dataTask(with: url) {(data, response, errors) in
        guard let data = data else {
            print("error")
            return
        }
        guard let dataAsString = String(data: data, encoding: .utf8) else {return}
       
        let decoder = JSONDecoder()
        if let forecast = try? decoder.decode(Forecast.self, from: data) {
            DispatchQueue.main.async {
                self.forecasts = forecast
                }
            }
        else{
            print("can't decode JSON")
        }
        }.resume()
}
}

struct Forecast: Codable{
    var city_name: String?
    var state_code: String?
    var timestamp_local: String?
    var weathers : [Weather] = [Weather]()
}

struct Weather : Codable{
    var icon: String?
    var code: Int?
    var description: String?
}
