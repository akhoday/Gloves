//
//  ComfyView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//

import SwiftUI

struct ComfyView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    
    var body: some View {
        
        
        ZStack{
            
            Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ComfyView_Previews: PreviewProvider {
    static var previews: some View {
        ComfyView(weather: Weather(), response : Response(), data : Data())
    }
}
