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
        
        // creating the URL
        let url = URL(string: "https://api.weatherbit.io/v2.0/forecast/daily?city=\(cityName)&country=US&units=I&key=b4da1afe1c3b442ab357323b6251da78" )!
        
        // dpwnload th data
        URLSession.shared.dataTask(with: url) {(data, _, errors) in
            
            
            // if data isn't nil then unwrap it, else just leave the function.
            guard let data = data else {
                print("eror")
                return
            }
            guard let dataAsString = String(data: data, encoding: .utf8) else {return}
            
            let decoder = JSONDecoder()
            if let response = try? decoder.decode(Response.self, from: data) {
                DispatchQueue.main.async {
                    print(response)
                  self.responses = response
                    print(self.responses.state_code)
                  //  print(self.responses.data[0].datetime)
                }
            }
            else{
                print("can't decode JSON")
            }
        }.resume()
    }
}

struct Response: Codable {
    var state_code: String?
    var city_name: String?
    var lon: String?
    var timezone: String?
    var lat: String?
    var country_code: String?
    var data: [Data] = [Data]()
    //access the data array with has the stored weather forecasts
   //var datas : [DataResponse] = [DataResponse]()
}

struct Data: Codable{
    var high_temp : Double?
    var wind_gust_spd: Double?
    var rh : Double?
    var min_temp : Double?
    var temp : Double?
    var uv : Double?
    var precip : Double?
    var low_temp : Double?
    var datetime : String?
    var snow : Double?
    var vis : Double?
    var sunset_ts : Int?
    var sunrise_ts : Int?
    var weather : Weather = Weather()
}
struct DataResponse: Codable{
    let data: [Data]
}
struct Weather : Codable{
    var icon: String?
    var code: Int?
    var description: String?
}

extension Data: Identifiable{
    var id: String {return datetime!}
}

extension Weather: Identifiable{
    var id: String {return description!}
}

