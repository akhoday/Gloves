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
                  
                  Rectangle().foregroundColor(Color.background).edgesIgnoringSafeArea(.all)
                  
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
                            Text("Shirts: " + (coldColdFund["Shirts"] ?? "ur mom"))
                            Text("Pants: " + (coldColdFund["Pants"] ?? "ur mom"))
                            Text("Coats: " + (coldColdFund["Coats"] ?? "ur mom"))
                            Text("Socks: " + (coldColdFund["Socks"] ?? "ur mom"))
                            Text("Shoes: " + (coldColdFund["Shoes"] ?? "ur mom"))
                            Text("Gloves: " + (coldColdFund["Gloves"] ?? "ur mom"))
                            Text("Scarves: " + (coldColdFund["Scarves"] ?? "ur mom"))
                            Text("Hats: " + (coldColdFund["Hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (coldColdFund["Sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (coldColdFund["Extra"] ?? "None"))
                    
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
                            Text("Shirts: " + (coldFund["Shirts"] ?? "ur mom"))
                            Text("Pants: " + (coldFund["Pants"] ?? "ur mom"))
                            Text("Coats: " + (coldFund["Coats"] ?? "ur mom"))
                            Text("Socks: " + (coldFund["Socks"] ?? "ur mom"))
                            Text("Shoes" + (coldFund["Shoes"] ?? "ur mom"))
                            Text("Gloves: " + (coldFund["Gloves"] ?? "ur mom"))
                            Text("Scarves: " + (coldFund["Scarves"] ?? "ur mom"))
                            Text("Hats: " + (coldFund["Hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (coldFund["Sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (coldFund["Extra"] ?? "None"))

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
                        Text("Shirts: " + (coldishFund["Shirts"] ?? "ur mom"))
                        Text("Pants: " + (coldishFund["Pants"] ?? "ur mom"))
                        Text("Coats: " + (coldishFund["Coats"] ?? "ur mom"))
                        Text("Socks: " + (coldishFund["Socks"] ?? "ur mom"))
                        Text("Shoes: " + (coldishFund["Shoes"] ?? "ur mom"))
                        Text("Gloves: " + (coldishFund["Gloves"] ?? "ur mom"))
                        Text("Scarves: " + (coldishFund["Scarves"] ?? "ur mom"))
                        Text("Hats: " + (coldishFund["Hats"] ?? "ur mom"))
                        Text("Sunglasses: " + (coldishFund["Sunglasses"] ?? "ur mom"))
                        Text("Extra: " + (coldishFund["Extra"] ?? "None"))
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
                            Text("Shirts: " + (warmishFund["Shirts"] ?? "ur mom"))
                            Text("Pants: " + (warmishFund["Pants"] ?? "ur mom"))
                            Text("Coats: " + (warmishFund["Coats"] ?? "ur mom"))
                            Text("Socks: " + (warmishFund["Socks"] ?? "ur mom"))
                            Text("Shoes: " + (warmishFund["Shoes"] ?? "ur mom"))
                            Text("Gloves: " + (warmishFund["Gloves"] ?? "ur mom"))
                            Text("Scarves: " + (warmishFund["Scarves"] ?? "ur mom"))
                            Text("Hats: " + (warmishFund["Hats"] ?? "ur mom"))
                            Text("Sunglasses: " + (warmishFund["Sunglasses"] ?? "ur mom"))
                            Text("Extra: " + (warmishFund["Extra"] ?? "None"))
                        
                        }                }
                    
                  if temp > 60 && temp < 71{
//                      shoes = warmerFund["shoes"]!
//                      shirts  = warmerFund["shirts"]!
//                      coats = warmerFund["coats"]!
//                      gloves  = warmerFund["gloves"]!
//      //                extra = warmerFund["extra"]!
//      //                pants  = warmerFund["pants"]!
//      //                socks  = warmerFund["socks"]!
//      //                scarves  = warmerFund["scarves"]!
//      //                gloves  = warmerFund["gloves"]!
//      //                hats = warmerFund["hats"]!
//      //                sunglasses = warmerFund["sunglasses"]!
               VStack{
                    Text("Shirts: " + (warmerFund["Shirts"] ?? "ur mom"))
                    Text("Pants: " + (warmerFund["Pants"] ?? "ur mom"))
                    Text("Coats: " + (warmerFund["Coats"] ?? "ur mom"))
                    Text("Socks: " + (warmerFund["Socks"] ?? "ur mom"))
                    Text("Shoes: " + (warmerFund["Shoes"] ?? "ur mom"))
                   Text("Gloves: " + (warmerFund["Gloves"] ?? "ur mom"))
                   Text("Scarves: " + (warmerFund["Scarves"] ?? "ur mom"))
                   Text("Hats: " + (warmerFund["Hats"] ?? "ur mom"))
                   Text("Sunglasses: " + (warmerFund["Sunglasses"] ?? "ur mom"))
                   Text("Extra: " + (warmerFund["Extra"] ?? "None"))

               } }
//
                  if (temp > 60 && temp < 71){
//      //                shoes = hotFund["shoes"]!
//      //                shirts  = hotFund["shirts"]!
//      //                coats = hotFund["coats"]!
//      //                gloves  = hotFund["gloves"]!
//      //                extra = hotFund["extra"]!
//      //                pants  = hotFund["pants"]!
//      //                socks  = hotFund["socks"]!
//      //                scarves  = hotFund["scarves"]!
//      //                gloves  = hotFund["gloves"]!
//      //                hats = hotFund["hats"]!
//      //                sunglasses = hotFund["sunglasses"]!
//
                     VStack{
                        Text("Shirts: " + (hotFund["Shirts"] ?? "ur mom"))
                        Text("Pants: " + (hotFund["Pants"] ?? "ur mom"))
                        Text("Coats: " + (hotFund["Coats"] ?? "ur mom"))
                        Text("Socks: " + (hotFund["Socks"] ?? "ur mom"))
                        Text("Shoes: " + (hotFund["Shoes"] ?? "ur mom"))
                        Text("Gloves: " + (hotFund["Gloves"] ?? "ur mom"))
                        Text("Scarves: " + (hotFund["Scarves"] ?? "ur mom"))
                        Text("Hats: " + (hotFund["Hats"] ?? "ur mom"))
                        Text("Sunglasses: " + (hotFund["Sunglasses"] ?? "ur mom"))
                        Text("Extra: " + (hotFund["Extra"] ?? "None"))

                }

                      }

//
//                  else {
//                      shoes = hawtFund["shoes"]!
//                      shirts  = hawtFund["shirts"]!
//                      coats = hawtFund["coats"]!
//                      gloves  = hawtFund["gloves"]!
//                      extra = hawtFund["extra"]!
//                      pants  = hawtFund["pants"]!
//                      socks  = hawtFund["socks"]!
//                      scarves  = hawtFund["scarves"]!
//                      gloves  = hawtFund["gloves"]!
//                      hats = hawtFund["hats"]!
//                      sunglasses = hawtFund["sunglasses"]!
//
//                      HStack{
//                          VStack{
//                              Text("Shirts: " + shirts)
//                              Text("Pants: " + pants)
//                              Text("Coats: " + coats)
//                              Text("Socks: " + socks)
//                          }
//
//                          VStack{
//                              Text("Gloves: " + gloves)
//                              Text("Scarves: " + scarves)
//                              Text("Hats: " + hats)
//                              Text("Sunglasses: " + sunglasses)
//                              Text("Extra: " + extra)
//                          }
//
//                      }
//                  }
                          
                      
                  }
                  
                  }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
      }
          }
       
       
      struct ClassicView_Previews: PreviewProvider {
          static var previews: some View {
              ClassicView(weather: Weather(), response : Response(), data : Data())
          }
      }

