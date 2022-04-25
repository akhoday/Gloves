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
                        VStack{
                            Text("Shirts: " + (coldColdFund["shirts"] ?? "ur mom"))
                            Text("Pants: " + (coldColdFund["pants"] ?? "ur mom"))
                            Text("Coats: " + (coldColdFund["coats"] ?? "ur mom"))
                            Text("Socks: " + (coldColdFund["socks"] ?? "ur mom"))
                            Text("Shoes: " + (coldColdFund["shoes"] ?? "ur mom"))
                            Text("Gloves: " + (coldColdFund["gloves"] ?? "ur mom"))
                            Text("Scarves: " + (coldColdFund["scarves"] ?? "ur mom"))
                            Text("Hats: " + (coldColdFund["hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (coldColdFund["sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (coldColdFund["extra"] ?? "None"))
                    
                                                   }
                      }
//                          shoes = coldColdFund["shoes"]!
//                          shirts  = coldColdFund["shirts"]!
//                          coats = coldColdFund["coats"]!
//                          gloves  = coldColdFund["gloves"]!
//                          extra = coldColdFund["extra"]!
//                          pants  = coldColdFund["pants"]!
//                          socks  = coldColdFund["socks"]!
//                          scarves  = coldColdFund["scarves"]!
//                          gloves  = coldColdFund["gloves"]!
//                          hats = coldColdFund["hats"]!
//                          sunglasses = coldColdFund["sunglasses"]!
//
//
//
//                          }
//
//
//                          }
//
//                      else  {
//                        Text("Ur Mom")
//                      }
          
                     if temp > 20 && temp < 33{
//                          shoes = coldFund["shoes"]!
//                          shirts  = coldFund["shirts"]!
//                          coats = coldFund["coats"]!
//                          gloves  = coldFund["gloves"]!
//                          extra = coldFund["extra"]!
//                          pants  = coldFund["eants"]!
//                          socks  = coldFund["socks"]!
//                          scarves  = coldFund["scarves"]!
//                          gloves  = coldFund["gloves"]!
//                          hats = coldFund["hats"]!
//                          sunglasses = coldFund["sunglasses"]!
                        
                        VStack{
                            Text("Shirts: " + (coldFund["shirts"] ?? "ur mom"))
                            Text("Pants: " + (coldFund["pants"] ?? "ur mom"))
                            Text("Coats: " + (coldFund["coats"] ?? "ur mom"))
                            Text("Socks: " + (coldFund["socks"] ?? "ur mom"))
                            Text("Shoes" + (coldFund["shoes"] ?? "ur mom"))
                            Text("Gloves: " + (coldFund["gloves"] ?? "ur mom"))
                            Text("Scarves: " + (coldFund["scarves"] ?? "ur mom"))
                            Text("Hats: " + (coldFund["hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (coldFund["sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (coldFund["extra"] ?? "None"))

                }}

//
                    if temp > 32 && temp < 51{
//                          shoes = coldishFund["shoes"]!
//                          shirts  = coldishFund["shirts"]!
//                          coats = coldishFund["coats"]!
//                          gloves  = coldishFund["gloves"]!
//                          extra = coldishFund["extra"]!
//                          pants  = coldishFund["pants"]!
//                          socks  = coldishFund["socks"]!
//                          scarves  = coldishFund["scarves"]!
//                          gloves  = coldishFund["gloves"]!
//                          hats = coldishFund["hats"]!
//                          sunglasses = coldishFund["sunglasses"]!
                    VStack{
                        Text("Shirts: " + (coldishFund["shirts"] ?? "ur mom"))
                        Text("Pants: " + (coldishFund["pants"] ?? "ur mom"))
                        Text("Coats: " + (coldishFund["coats"] ?? "ur mom"))
                        Text("Socks: " + (coldishFund["socks"] ?? "ur mom"))
                        Text("Shoes: " + (coldishFund["shoes"] ?? "ur mom"))
                        Text("Gloves: " + (coldishFund["gloves"] ?? "ur mom"))
                        Text("Scarves: " + (coldishFund["scarves"] ?? "ur mom"))
                        Text("Hats: " + (coldishFund["hats"] ?? "ur mom"))
                        Text("Sunglasses: " + (coldishFund["sunglasses"] ?? "ur mom"))
                        Text("Extra: " + (coldishFund["extra"] ?? "None"))
                          }}
//
                     if temp > 50 && temp < 61{
//                          shoes = warmishFund["shoes"]!
//                          shirts  = warmishFund["shirts"]!
//                          coats = warmishFund["coats"]!
//                          gloves  = warmishFund["gloves"]!
//                          extra = warmishFund["extra"]!
//                          pants  = warmishFund["pants"]!
//                          socks  = warmishFund["socks"]!
//                          scarves  = warmishFund["scarves"]!
//                          gloves  = warmishFund["gloves"]!
//                          hats = warmishFund["hats"]!
//                          sunglasses = warmishFund["sunglasses"]!
                        VStack{
                            Text("Shirts: " + (warmishFund["shirts"] ?? "ur mom"))
                            Text("Pants: " + (warmishFund["pants"] ?? "ur mom"))
                            Text("Coats: " + (warmishFund["coats"] ?? "ur mom"))
                            Text("Socks: " + (warmishFund["socks"] ?? "ur mom"))
                            Text("Shoes: " + (warmishFund["shoes"] ?? "ur mom"))
                            Text("Gloves: " + (warmishFund["gloves"] ?? "ur mom"))
                            Text("Scarves: " + (warmishFund["scarves"] ?? "ur mom"))
                            Text("Hats: " + (warmishFund["hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (warmishFund["sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (warmishFund["extra"] ?? "None"))
                        
                        }                }
                    
                  if temp > 60 && temp < 71{

               VStack{
                    Text("Shirts: " + (warmerFund["shirts"] ?? "ur mom"))
                    Text("Pants: " + (warmerFund["pants"] ?? "ur mom"))
                    Text("Coats: " + (warmerFund["coats"] ?? "ur mom"))
                    Text("Socks: " + (warmerFund["socks"] ?? "ur mom"))
                    Text("Shoes: " + (warmerFund["shoes"] ?? "ur mom"))
                   Text("Gloves: " + (warmerFund["gloves"] ?? "ur mom"))
                   Text("Scarves: " + (warmerFund["scarves"] ?? "ur mom"))
                   Text("Hats: " + (warmerFund["hats"] ?? "ur mom"))
                   Text("Sunglasses: " + (warmerFund["sunglasses"] ?? "ur mom"))
                   Text("Extra: " + (warmerFund["extra"] ?? "None"))

               } }
//
                  if (temp > 72 && temp < 86){
//                    if (data.precip)! > 2.4 {
//                        hawtFund["Shoes"] = "old sneakers"
//                        hawtFund["Extra"] = "Bring an umbrella!"
//                    }
                     VStack{
                        Text("Shirts: " + (hotFund["shirts"] ?? "ur mom"))
                        Text("Pants: " + (hotFund["pants"] ?? "ur mom"))
                        Text("Coats: " + (hotFund["coats"] ?? "ur mom"))
                        Text("Socks: " + (hotFund["socks"] ?? "ur mom"))
                        Text("Shoes: " + (hotFund["shoes"] ?? "ur mom"))
                        Text("Gloves: " + (hotFund["gloves"] ?? "ur mom"))
                        Text("Scarves: " + (hotFund["scarves"] ?? "ur mom"))
                        Text("Hats: " + (hotFund["hats"] ?? "ur mom"))
                        Text("Sunglasses: " + (hotFund["sunglasses"] ?? "ur mom"))
                        Text("Extra: " + (hotFund["extra"] ?? "None"))

                }

                      }
                    
                    if temp > 86 {
 //                    if (data.precip)! > 2.4 {
 //                        hawtComfy["Shoes"] = "old sneakers"
 //                        hawtComfy["Extra"] = "Bring an umbrella!"
                        VStack{
                            Text("Shirts: " + (hawtFund["Shirts"] ?? "ur mom"))
                            Text("Pants: " + (hawtFund["Pants"] ?? "ur mom"))
                            Text("Coats: " + (hawtFund["Coats"] ?? "Optional"))
                            Text("Socks: " + (hawtFund["Socks"] ?? "ur mom"))
                             Text("Shoes: " + (hawtFund["Shoes"] ?? "ur mom"))
                            Text("Gloves: " + (hawtFund["Gloves"] ?? "Always recommended, but maybe not the best choice"))
                            Text("Scarves: " + (hawtFund["Scarves"] ?? "Not recommended"))
                            Text("Hats: " + (hawtFund["Hats"] ?? "Optional"))
                            Text("Sunglasses: " + (hawtFund["Sunglasses"] ?? "Optional"))
                            Text("Extra: " + (hawtFund["Extra"] ?? "None"))
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


