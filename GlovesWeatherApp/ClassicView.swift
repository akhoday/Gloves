//
//  ClassicView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//

import SwiftUI

struct ClassicView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ClassicView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicView(weather: Weather(), response : Response(), data : Data())
    }
}
