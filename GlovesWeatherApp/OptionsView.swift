//
//  OptionsView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 4/27/22.
////

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
                
                Text("Assorted Style Ideas")
                
                if temp < 21 {
                    VStack{
                        HStack{
                            Image("coldGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("coldTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldAcess").resizable().frame(width: 100, height: 200)
                            Image("coldGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                    
                }
                
                
                if temp > 20 && temp < 33{
                    VStack{
                        HStack{
                            Image("coldGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("coldTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldAcess").resizable().frame(width: 100, height: 200)
                            Image("coldGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                }
                if temp > 32 && temp < 51{
                    VStack{
                        HStack{
                            Image("coldishGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldishAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("coldishTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("coldishGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                }
                
                if temp > 50 && temp < 61{
                    VStack{
                        HStack{
                            Image("warmishGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("warmishAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("warmishTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("warmishGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                }
                
                if temp > 60 && temp < 71{
                    VStack{
                        HStack{
                            Image("warmerGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("warmerAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("warmerTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("warmerBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("warmerGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                }
                
                
                if temp > 72 && temp < 86 {
                    VStack{
                        HStack{
                            Image("hotGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("hotTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }
                }
                if temp > 86 {
                    VStack{
                        HStack{
                            Image("hotGra\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotAca\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                        
                        HStack{
                            Image("hotTren\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotBoho\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                            Image("hotGru\(Int.random(in: 0 ... 5))").resizable().frame(width: 100, height: 200)
                        }
                    }            }
            }
            
            
            
        }.foregroundColor(Color.fontColor).edgesIgnoringSafeArea(.all)
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView(weather: Weather(), response : Response(), data : Data())
    }
}
