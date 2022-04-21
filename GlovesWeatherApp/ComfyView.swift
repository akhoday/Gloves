//
//  ComfyView.swift
//  GlovesWeatherApp
//
//  Created by Maria Dymek (student LM) on 3/30/22.
//
import SwiftUI
//comfy
struct ComfyView: View {
    
    var weather : Weather
    var response : Response
    var data : Data
    
    var coldColdComfy = ["Shirts": "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)",
        "Pants": "sweatpants, thick leggings",
        "Coats" : "heavy winter coat (canada goose, puffer jacket)",
        "Socks": " 2 pairs of socks or thick socks",
        "Shoes": "boots (uggs), sneakers(forces)",
        "Gloves": "recommended",
        "Scarves": "recommended",
        "Hats" : "beanie, ear muffs, ski mask, head warmer headbands",
        "Sunglasses" : "optional",
        "Extra" : ""]
//
    var coldComfy = ["Shirts" : "long sleeve thick shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)",
                     "Pants" : "sweatpants, leggings",
                     "Coats" : "heavy winter coat (canada goose, puffer jacket)",
                     "Socks" : "a good pair of socks",
                     "Shoes": "boots(uggs), sneakers(forces, converse, vans)",
                     "Gloves" : "",
                     "Scarves" : "recommended",
                     "Hats": "beanie, ear muffs, ski mask, head warmer headbands",
                     "Sunglasses" : "optional",
                     "Extra" : ""]
//
   var coldishComfy = ["Shirts": "long sleeve shirt or a short sleeve that is a good to layer w/ sweatshirt/jacket(zip up)", "Pants": "sweatpants, leggings", "Coats": "basic winter coat (north face)", "Socks": "", "Shoes": "sneakers(forces, converse, vans, nike, adidas)", "Gloves": "optional", "Scarves": "optional", "Hats" : "optional winter hat", "Sunglasses" : "optional", "Extra" : ""]
//
    var warmishComfy = ["Shirts": "short sleeve w/ jacket, or long sleeve shirt", "Pants": " sweatpants, leggings, potentially shorts", "Coats" : "lighter/fleece jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves" : "not recommended", "Scarves" : "not recommended", "Hats" : "" , "Sunglasses" : "optional", "Extra" : ""]
//
    var warmerComfy = ["Shirts": "casual t-shirt, long sleeve ", "Pants": "athletic shorts, sweat shorts", "Coats": "optional jacket", "Socks": "normal socks", "Shoes": "sneakers(forces, conserve, vans, nike, adidas)", "Gloves": "not recommended", "Scarves": "not recommended", "Hats": "baseball cap", "Sunglasses": "optional", "Extra" : ""]

    var hotComfy = ["Shirts": "casual t-shirt, tank tops", "Pants": "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "athletic socks, cotton socks", "Shoes": "sneakers (converse, forces, vans), birkenstocks", "Gloves": "not recommended", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses" : "optional", "Extra" : ""]

    var hawtComfy = ["Shirts" : "casual t-shirt, tank tops", "Pants" : "athletic shorts, sweat shorts", "Coats" : "optional jacket", "Socks": "no socks or socks w/ sneakers", "Shoes": "flip flops, birkenstocks, sandals, sneakers", "Gloves" : "not recommended", "Scarves": "not recommended", "Hats" : "baseball cap", "Sunglasses": "optional", "Extra" : ""]

    
    var body: some View {
        
        let temp = (data.temp)!
        var shoes  = ""
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
                        
                        HStack{
                            VStack{
                                Text("Shirts: " + (coldColdComfy["Shirts"] ?? "ur mom"))
                                Text("Pants: " + (coldColdComfy["Pants"] ?? "ur mom"))
                                Text("Coats: " + (coldColdComfy["Coats"] ?? "ur mom"))
                                Text("Socks: " + (coldColdComfy["Socks"] ?? "ur mom"))
                                Text("Shoes: " + (coldColdComfy["Shoes"] ?? "ur mom"))
                                                       }
                        
                            VStack{
                                Text("Gloves: " + (coldColdComfy["Gloves"] ?? "ur mom"))
                                Text("Scarves: " + (coldColdComfy["Scarves"] ?? "ur mom"))
                                Text("Hats: " + (coldColdComfy["Hats"] ?? "ur mom"))
                                Text("Sunglasses: " + (coldColdComfy["Sunglasses"] ?? "ur mom"))
                                Text("Extra: " + (coldColdComfy["Extra"] ?? ""))
                        
                                                       }
                        
                       }
                       }
//                           shoes = coldColdComfy["Shoes"]!
//                           shirts  = coldColdComfy["Shirts"]!
//                           coats = coldColdComfy["Coats"]!
//                           gloves  = coldColdComfy["Gloves"]!
//                           extra = coldColdComfy["Extra"]!
//                           pants  = coldColdComfy["Pants"]!
//                           socks  = coldColdComfy["Socks"]!
//                           scarves  = coldColdComfy["Scarves"]!
//                           gloves  = coldColdComfy["Gloves"]!
//                           hats = coldColdComfy["Hats"]!
//                           sunglasses = coldColdComfy["Sunglasses"]!
//
//                           HStack{
//                               VStack{
//                                   Text("Shirts: " + shirts)
//                                   Text("Pants: " + pants)
//                                   Text("Coats: " + coats)
//                                   Text("Socks: " + socks)
//                               }
//
//                               VStack{
//                                   Text("Gloves: " + gloves)
//                                   Text("Scarves: " + scarves)
//                                   Text("Hats: " + hats)
//                                   Text("Sunglasses: " + sunglasses)
//                                   Text("Extra: " + extra)
//
//                               }
//
//                           }
//
//                       }
                           
//
//
//                           shoes = coldComfy["Shoes"]!
//                           shirts  = coldComfy["Shirts"]!
//                           coats = coldComfy["Coats"]!
//                           gloves  = coldComfy["Gloves"]!
//                           extra = coldComfy["Extra"]!
//                           pants  = coldComfy["Pants"]!
//                           socks  = coldComfy["Socks"]!
//                           scarves  = coldComfy["Scarves"]!
//                           gloves  = coldComfy["Gloves"]!
//                           hats = coldComfy["Hats"]!
//                           sunglasses = coldComfy["Sunglasses"]!
                     
                        if temp > 20 && temp < 33{
                           HStack{
                               VStack{
                                   Text("Shirts: " + (coldComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (coldComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (coldComfy["Coats"] ?? "ur mom"))
                                   Text("Socks: " + (coldComfy["Socks"] ?? "ur mom"))
                                   Text("Shoes" + (coldComfy["Shoes"] ?? "ur mom"))
                                    
                               }

                               VStack{
                                   Text("Gloves: " + (coldComfy["Gloves"] ?? "ur mom"))
                                   Text("Scarves: " + (coldComfy["Scarves"] ?? "ur mom"))
                                   Text("Hats: " + (coldComfy["Hats"] ?? "ur mom"))
                                   Text("Sunglasses: " + (coldComfy["Sunglasses"] ?? "ur mom"))
                                   Text("Extra: " + (coldComfy["Extra"] ?? ""))

                               }
//
                             }
//
                       }
//
                       if temp > 32 && temp < 51{
//                           shoes = coldishComfy["Shoes"]!
//                           shirts  = coldishComfy["Shirts"]!
//                           coats = coldishComfy["Coats"]!
//                           gloves  = coldishComfy["Gloves"]!
//                           extra = coldishComfy["Extra"]!
//                           pants  = coldishComfy["Pants"]!
//                           socks  = coldishComfy["Socks"]!
//                           scarves  = coldishComfy["Scarves"]!
//                           gloves  = coldishComfy["Gloves"]!
//                           hats = coldishComfy["Hats"]!
//                           sunglasses = coldishComfy["Sunglasses"]!

                           HStack{
                               VStack{
                                   Text("Shirts: " + (coldishComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (coldishComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (coldishComfy["Coats"] ?? "ur mom"))
                                   Text("Socks: " + (coldishComfy["Socks"] ?? "ur mom"))
                                   Text("Shoes: " + (coldishComfy["Shoes"] ?? "ur mom"))
                               }

                               VStack{
                                   Text("Gloves: " + (coldishComfy["Gloves"] ?? "ur mom"))
                                   Text("Scarves: " + (coldishComfy["Scarves"] ?? "ur mom"))
                                   Text("Hats: " + (coldishComfy["Hats"] ?? "ur mom"))
                                   Text("Sunglasses: " + (coldishComfy["Sunglasses"] ?? "ur mom"))
                                   Text("Extra: " + (coldishComfy["Extra"] ?? " "))
                               }
                           }}
//
                       if temp > 50 && temp < 61{
//                           shoes = warmishComfy["Shoes"]!
//                           shirts  = warmishComfy["Shirts"]!
//                           coats = warmishComfy["Coats"]!
//                           gloves  = warmishComfy["Gloves"]!
//                           extra = warmishComfy["Extra"]!
//                           pants  = warmishComfy["Pants"]!
//                           socks  = warmishComfy["Socks"]!
//                           scarves  = warmishComfy["Scarves"]!
//                           gloves  = warmishComfy["Gloves"]!
//                           hats = warmishComfy["Hats"]!
//                           sunglasses = warmishComfy["Sunglasses"]!
//
                           HStack{
                               VStack{
                                   Text("Shirts: " + (warmishComfy["Shirts"] ?? "ur mom"))
                                   Text("Pants: " + (warmishComfy["Pants"] ?? "ur mom"))
                                   Text("Coats: " + (warmishComfy["Coats"] ?? "ur mom"))
                                   Text("Socks: " + (warmishComfy["Socks"] ?? "ur mom"))
                                    Text("Shoes: " + (warmishComfy["Shoes"] ?? "ur mom"))
                               }

                               VStack{
                                   Text("Gloves: " + (warmishComfy["Gloves"] ?? "ur mom"))
                                   Text("Scarves: " + (warmishComfy["Scarves"] ?? "ur mom"))
                                   Text("Hats: " + (warmishComfy["Hats"] ?? "ur mom"))
                                   Text("Sunglasses: " + (warmishComfy["Sunglasses"] ?? "ur mom"))
                                   Text("Extra: " + (warmishComfy["Extra"] ?? " "))

                               }

                           }
                       }

                   if temp > 60 && temp < 71{
//                       shoes = warmerComfy["Shoes"]!
//                       shirts  = warmerComfy["Shirts"]!
//                       coats = warmerComfy["Coats"]!
//                       gloves  = warmerComfy["Gloves"]!
//                       extra = warmerComfy["Extra"]!
//                       pants  = warmerComfy["Pants"]!
//                       socks  = warmerComfy["Socks"]!
//                       scarves  = warmerComfy["Scarves"]!
//                       gloves  = warmerComfy["Gloves"]!
//                       hats = warmerComfy["Hats"]!
//                       sunglasses = warmerComfy["Sunglasses"]!
//
                       HStack{
                           VStack{
                                Text("Shirts: " + (warmerComfy["Shirts"] ?? "ur mom"))
                                Text("Pants: " + (warmerComfy["Pants"] ?? "ur mom"))
                                Text("Coats: " + (warmerComfy["Coats"] ?? "ur mom"))
                                Text("Socks: " + (warmerComfy["Socks"] ?? "ur mom"))
                                Text("Shoes: " + (warmerComfy["Shoes"] ?? "ur mom"))
                            }

                           VStack{
                               Text("Gloves: " + (warmerComfy["Gloves"] ?? "ur mom"))
                               Text("Scarves: " + (warmerComfy["Scarves"] ?? "ur mom"))
                               Text("Hats: " + (warmerComfy["Hats"] ?? "ur mom"))
                               Text("Sunglasses: " + (warmerComfy["Sunglasses"] ?? "ur mom"))
                               Text("Extra: " + (warmerComfy["Extra"] ?? " "))

                           }

                       }
                   }
//
//                   if temp > 60 && temp < 71 {
//                       shoes = hotComfy["Shoes"]!
//                       shirts  = hotComfy["Shirts"]!
//                       coats = hotComfy["Coats"]!
//                       gloves  = hotComfy["Gloves"]!
//                       extra = hotComfy["Extra"]!
//                       pants  = hotComfy["Pants"]!
//                       socks  = hotComfy["Socks"]!
//                       scarves  = hotComfy["Scarves"]!
//                       gloves  = hotComfy["Gloves"]!
//                       hats = hotComfy["Hats"]!
//                       sunglasses = hotComfy["Sunglasses"]!
//
//                       HStack{
//                           VStack{
//                               Text("Shirts: " + shirts)
//                               Text("Pants: " + pants)
//                               Text("Coats: " + coats)
//                               Text("Socks: " + socks)
//                           }
//
//                           VStack{
//                               Text("Gloves: " + gloves)
//                               Text("Scarves: " + scarves)
//                               Text("Hats: " + hats)
//                               Text("Sunglasses: " + sunglasses)
//                               Text("Extra: " + extra)
//
//                           }
//
//                       }
//                   }
//
//                   if temp > 70 {
//                       shoes = hawtComfy["Shoes"]!
//                       shirts  = hawtComfy["Shirts"]!
//                       coats = hawtComfy["Coats"]!
//                       gloves  = hawtComfy["Gloves"]!
//                       extra = hawtComfy["Extra"]!
//                       pants  = hawtComfy["Pants"]!
//                       socks  = hawtComfy["Socks"]!
//                       scarves  = hawtComfy["Scarves"]!
//                       gloves  = hawtComfy["Gloves"]!
//                       hats = hawtComfy["Hats"]!
//                       sunglasses = hawtComfy["Sunglasses"]!
//
//                       HStack{
//                           VStack{
//                               Text("Shirts: " + shirts)
//                               Text("Pants: " + pants)
//                               Text("Coats: " + coats)
//                               Text("Socks: " + socks)
//                           }
//
//                           VStack{
//                               Text("Gloves: " + gloves)
//                               Text("Scarves: " + scarves)
//                               Text("Hats: " + hats)
//                               Text("Sunglasses: " + sunglasses)
//                               Text("Extra: " + extra)
//                           }
//
//                       }
                 //  }
                           
                       
                 // }
                   }
                   }.padding().frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .top).foregroundColor(Color.fontColor)
       }
           }
           
      
struct ComfyView_Previews: PreviewProvider {
           static var previews: some View {
               ComfyView(weather: Weather(), response : Response(), data : Data())
           }
       }




