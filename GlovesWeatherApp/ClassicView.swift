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
 
    var coldColdFund = ["shirts" : "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", "pants" : "thick leggings, thick jeans, thick corduroy pants", "coats": "heavy winter coat (canada goose, puffer jacket)", "socks": " 2 pairs of socks or thick socks", "shoes" : "boots (uggs, docs), sneakers(forces)", "gloves" : "recommended", "scarves" : "recommended", "hats" : "beanie, ear muffs, ski mask, head warmer headbands", "sunglasses" : "optional", "extra" : ""]
 
 
    var coldFund = ["shirts" : "long sleeve thick shirt, sweater or a short sleeve that is a good to layer w/ a jacket", "pants": "leggings, jeans, corduroy", "coats" : "heavy winter coat (canada goose, puffer jacket)", "socks": "a good pair of socks", "shoes" : "boots(uggs, docs), sneakers(forces, converse, vans)", "gloves" : "recommended", "scarves" : "recommended", "hats" : "beanie, ear muffs, ski mask, head warmer headbands", "sunglasses" : "optional", "extra" : ""]
 
    var coldishFund = ["shirts" : "long sleeve shirt, sweater or a short sleeve that is a good to layer w/ a jacket", "pants" : "leggings, jeans, corduroy", "coats" : "basic winter coat (north face)", "socks" : "normal socks", "shoes" : "sneakers(forces, converse, vans, nike, adidas), docs", "gloves" : "optional", "scarves" : "optional", "hats" : "optional winter hat", "sunglasses": "optional","extra" : ""]
 
    var warmishFund = ["shirts" : "Long sleeve shirt, sweater, or short sleeve shirt layered over long sleeve", "pants" : "jeans, leggings, optional shorts", "coats" : "lighter/fleece jacket", "socks" : "normal socks", "shoes" : "sneakers(forces, conserve, vans, nike, adidas)", "gloves" : "not recommended", "scarves" : "not recommended","hats" : "baseball cap", "sunglasses" : "optional", "extra" : ""]
 
    var warmerFund = ["shirts": "oversized t-shirt, casual long sleeve","pants" : "jean shorts", "coats" : "optional jacket", "socks" : "normal socks", "shoes" : "sneakers(forces, conserve, vans, nike, adidas)", "gloves" : "not recommended", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : ""]
 
    var hotFund = ["shirts": "oversized t-shirt, tank tops", "pants" : " jean shorts, skirt", "coats" : "optional jacket", "socks" : "athletic socks, cotton socks", "shoes" : "sneakers (converse, forces, vans), birkenstocks", "gloves" : "not recommended", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : ""]
 
    var hawtFund = ["shirts" : "oversized t-shirt, tank tops", "pants" : " jean shorts, skirt", "coats" : "optional jacket", "socks" : "no socks or socks w/ sneakers", "shoes" : "flip flops, birkenstocks, sandals, sneakers", "gloves" : "not recommended", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : ""]
 
    var body: some View {
 
        let temp = (data.temp)!
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
        var shoes  = " "
        var shirts  = ""
        var coats = ""
        var gloves  = ""
        var extra = ""
        var pants  = ""
        var socks  = ""
        var scarves  = ""
        var gloves  = ""
        var hats  = ""
        var sunglasses = ""
                

 
        ZStack{
                  
            Image(bk).edgesIgnoringSafeArea(.all)
                  
      //            if (data.precip)! > 2.4 {
      //                coldColdComfy["Shoes"] = "rain boots, snow boots, waterproof shoes"
      //                coldComfy["Shoes"] = "rain boots, snow boots, waterproof shoes"
      //                coldishComfy["Shoes"] = "rain boots"
      //                warmishComfy["Shoes"] = "rain boots, old sneakers"
      //                warmerComfy["Shoes"] = "old sneakers"
      //                hotComfy["Shoes"] = "old sneakers"
      //                hawtComfy["Shoes"] = "old sneakers"
      //                coldColdComfy["Extra"] = "Bring an umbrella!"
      //                coldComfy["Extra"] = "Bring an umbrella!"
      //                coldishComfy["Extra"] = "Bring an umbrella!"
      //                warmishComfy["Extra"] = "Bring an umbrella!"
      //                warmerComfy["Extra"] = "Bring an umbrella!"
      //                hotComfy["Extra"] = "Bring an umbrella!"
      //                hawtComfy["Extra"] = "Bring an umbrella!"
      //            }
                 
                  VStack{
                      
                      if temp < 21 {
                        VStack(alignment: .leading){
                            Text("Shirts: " + (coldColdFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (coldColdFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (coldColdFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (coldColdFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Shoes: " + (coldColdFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Gloves: " + (coldColdFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (coldColdFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (coldColdFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (coldColdFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Extra: " + (coldColdFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }
                    
                                                   }
                      }

          
                     if temp > 20 && temp < 33{
//
                        VStack(alignment: .leading){
                            Text("Shirts: " + (coldFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (coldFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (coldFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (coldFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Shoes" + (coldFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Gloves: " + (coldFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (coldFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (coldFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (coldFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Extra: " + (coldFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }

                }}

//
                    if temp > 32 && temp < 51{
//
                    VStack(alignment: .leading){
                        Text("Shirts: " + (coldishFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (coldishFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (coldishFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (coldishFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Shoes: " + (coldishFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Gloves: " + (coldishFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (coldishFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (coldishFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (coldishFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Extra: " + (coldishFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }
                          }}
//
                     if temp > 50 && temp < 61{
                        
                        VStack(alignment: .leading){
                            Text("Shirts: " + (warmishFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (warmishFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (warmishFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (warmishFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Shoes: " + (warmishFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Gloves: " + (warmishFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (warmishFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (warmishFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (warmishFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Extra: " + (warmishFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        }                }
                    
                  if temp > 60 && temp < 71{

               VStack(alignment: .leading){
                Text("Shirts: " + (warmerFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Pants: " + (warmerFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Coats: " + (warmerFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Socks: " + (warmerFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Shoes: " + (warmerFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Gloves: " + (warmerFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Scarves: " + (warmerFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Hats: " + (warmerFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Sunglasses: " + (warmerFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                Text("Extra: " + (warmerFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }

               } }
//
                  if (temp > 72 && temp < 86){
//                    if (data.precip)! > 2.4 {
//                        hawtFund["Shoes"] = "old sneakers"
//                        hawtFund["Extra"] = "Bring an umbrella!"
//                    }
                     VStack(alignment: .leading){
                        Text("Shirts: " + (hotFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (hotFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (hotFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (hotFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Shoes: " + (hotFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Gloves: " + (hotFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (hotFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (hotFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (hotFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Extra: " + (hotFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }

                }

                      }
                    
                    if temp > 86 {
 //                    if (data.precip)! > 2.4 {
 //                        hawtComfy["Shoes"] = "old sneakers"
 //                        hawtComfy["Extra"] = "Bring an umbrella!"
                        VStack(alignment: .leading){
                            Text("Shirts: " + (hawtFund["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Pants: " + (hawtFund["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Coats: " + (hawtFund["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Socks: " + (hawtFund["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Shoes: " + (hawtFund["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Gloves: " + (hawtFund["Gloves"] ?? "Always recommended, but maybe not the best choice")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Scarves: " + (hawtFund["Scarves"] ?? "Not recommended")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Hats: " + (hawtFund["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Sunglasses: " + (hawtFund["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                            Text("Extra: " + (hawtFund["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }
                        }
                     }
                 
                            

                        }
                  
                  }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
      }
          }
       
       
      struct ClassicView_Previews: PreviewProvider {
          static var previews: some View {
              ClassicView(weather: Weather(), response : Response(), data : Data())
          }
      }


