//
//  WeatherParsing.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 2/23/22.
//

import Foundation
import SwiftUI

class FetchData : ObservableObject{
    @State var cityName : String = "Philadelphia"
@Published var responses : Response = Response()

init(){
    
    let url = URL(string: "https://api.weatherbit.io/v2.0/forecast/daily?city=\(cityName)&country=US&key=b4da1afe1c3b442ab357323b6251da78")!
    
    URLSession.shared.dataTask(with: url) {(data, response, errors) in
        guard let data = data else {
            print("error")
            return
        }
        guard let dataAsString = String(data: data, encoding: .utf8) else {return}
       
        let decoder = JSONDecoder()
        if let response = try? decoder.decode(Response.self, from: data) {
            DispatchQueue.main.async {
                self.responses = response
                }
            }
        else{
            print("can't decode JSON")
        }
        }.resume()
}
}

struct Response: Codable {
    var forecasts : [Forecast] = [Forecast]()
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
