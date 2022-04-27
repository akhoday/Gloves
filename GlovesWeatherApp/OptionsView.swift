//
//  OptionsView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 4/27/22.
//

import SwiftUI

struct OptionsView: View {
    var weather : Weather
    var response : Response
    var data : Data
    
    var body: some View {
        
        let temp = (data.temp)!
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
        
        ZStack{
            
            Image(bk).resizable().edgesIgnoringSafeArea(.all)
            
            //chooses which outfits to present based on the temperature
            VStack{
                
                Text("Other Other Ideas Based on Various Styles")
                
                if temp < 21 {
                    VStack{
                        HStack{
                            Image("coldGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("coldTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldAcess").resizable().frame(width: 50, height: 100)
                            Image("coldGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                    
                }
                
                
                if temp > 20 && temp < 33{
                    VStack{
                        HStack{
                            Image("coldGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("coldTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldAcess").resizable().frame(width: 50, height: 100)
                            Image("coldGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                }
                if temp > 32 && temp < 51{
                    VStack{
                        HStack{
                            Image("coldishGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldishAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("coldishTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("coldishGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                }
                
                if temp > 50 && temp < 61{
                    VStack{
                        HStack{
                            Image("warmishGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("warmishAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("warmishTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("warmishGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                }
                
                if temp > 60 && temp < 71{
                    VStack{
                        HStack{
                            Image("warmerGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("warmerAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("warmerTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("warmerBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("warmerGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                }
                
                
                if temp > 72 && temp < 86 {
                    VStack{
                        HStack{
                            Image("hotGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("hotTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }
                }
                if temp > 86 {
                    VStack{
                        HStack{
                            Image("hotGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                        
                        HStack{
                            Image("hotTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                            Image("hotGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        }
                    }            }
            }
            
            
            
        }.padding().foregroundColor(Color.fontColor).edgesIgnoringSafeArea(.all)
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView(weather: Weather(), response : Response(), data : Data())
    }
}
