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
    
    //dictionaries that hold all the clothing suggestions for a classic/fundamental aesthetic. Separated based on the temperature outside.
    
    // less than 20
    var coldColdFund = ["shirts" : "long sleeve thick shirt, sweater, or a short sleeve that is good to layer with a jacket",
                        "pants" : "thick leggings, thick jeans, thick corduroy pants",
                        "coats": "heavy winter coat (canada goose, puffer jacket)",
                        "socks": " 2 pairs of socks or thick socks",
                        "shoes" : "boots (uggs, docs), sneakers(forces)",
                        "gloves" : "recommended",
                        "scarves" : "recommended",
                        "hats" : "beanie, ear muffs, ski mask, head warmer headbands",
                        "sunglasses" : "optional",
                        "extra" : "remember to apply sunscreen!"]
    
    //21-32
    var coldFund = ["shirts" : "long sleeve thick shirt, sweater or a short sleeve that is good to layer with a jacket",
                    "pants": "leggings, jeans, corduroy pants",
                    "coats" : "heavy winter coat (canada goose, puffer jacket)",
                    "socks": "a good pair of socks",
                    "shoes" : "boots(uggs, docs), sneakers(forces, converse, vans)",
                    "gloves" : "recommended",
                    "scarves" : "recommended",
                    "hats" : "beanie, ear muffs, ski mask, head warmer headbands",
                    "sunglasses" : "optional",
                    "extra" : "remember to apply sunscreen!"]
    //32-51
    var coldishFund = ["shirts" : "long sleeve shirt, sweater or a short sleeve that is good to layer with a jacket",
                       "pants" : "leggings, jeans, corduroy pants",
                       "coats" : "basic winter coat (north face)",
                       "socks" : "normal socks",
                       "shoes" : "sneakers(forces, converse, vans, nike, adidas), docs", "gloves" : "always recommended, but maybe not the best choice!", "scarves" : "optional", "hats" : "optional winter hat", "sunglasses": "optional","extra" : "remember to apply sunscreen!"]
    //52-60
    var warmishFund = ["shirts" : "long sleeve shirt, sweater, or a short sleeve shirt layered over a long sleeve",
                       "pants" : "jeans, leggings, optional shorts",
                       "coats" : "lighter material/fleece jacket",
                       "socks" : "normal socks",
                       "shoes" : "sneakers(forces, conserve, vans, nike, adidas)", "gloves" : "always recommended, but maybe not the best choice!", "scarves" : "not recommended","hats" : "baseball cap", "sunglasses" : "optional", "extra" : "remember to apply sunscreen!"]
    //61-71
    var warmerFund = ["shirts": "oversized t-shirt, casual long sleeve","pants" : "jean shorts", "coats" : "optional jacket", "socks" : "normal socks", "shoes" : "sneakers(forces, conserve, vans, nike, adidas)", "gloves" : "always recommended, but maybe not the best choice!", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : "remember to apply sunscreen!"]
    //61-71
    var hotFund = ["shirts": "oversized t-shirt, tank tops", "pants" : " jean shorts, skirt", "coats" : "optional jacket", "socks" : "athletic socks, cotton socks", "shoes" : "sneakers (converse, forces, vans), birkenstocks", "gloves" : "always recommended, but maybe not the best choice!", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : "remember to apply sunscreen!"]
    //72-86
    var hawtFund = ["shirts" : "oversized t-shirt, tank tops", "pants" : " jean shorts, skirt", "coats" : "optional jacket", "socks" : "no socks or socks w/ sneakers", "shoes" : "flip flops, birkenstocks, sandals, sneakers", "gloves" : "always recommended, but maybe not the best choice!", "scarves" : "not recommended", "hats" : "baseball cap", "sunglasses" : "optional", "extra" : "remember to apply sunscreen!"]
    //86+
    var body: some View {
        
        let temp = (data.temp)!
        var unwrappedIcon = weather.icon!
        var bk = unwrappedIcon + "bk"
        
        ZStack{
            
            Image(bk).resizable().edgesIgnoringSafeArea(.all)
            
            
            
            VStack{
                
                
                if temp <= 21 {
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (coldColdFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (coldColdFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (coldColdFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (coldColdFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "rain boots, snow boots, waterproof shoes"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else { Text("Shoes: " + (coldColdFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        Text("Gloves: " + (coldColdFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (coldColdFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (coldColdFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (coldColdFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Extra: " + (coldColdFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                    }
                    HStack {
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldAcess").resizable().frame(width: 50, height: 100)
                        Image("coldmFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    
                }
                
                
                
                if temp > 21 && temp <= 32{
                    
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (coldFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (coldFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (coldFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (coldFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "rain boots, snow boots, waterproof shoes"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Shoes" + (coldFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        Text("Gloves: " + (coldFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (coldFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (coldFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (coldFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else { Text("Extra: " + (coldFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        
                    }
                    HStack {
                        Image("coldFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldAcess").resizable().frame(width: 50, height: 100)
                        Image("coldmFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                }
                
                
                if temp > 32 && temp <= 50{
                    
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (coldishFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (coldishFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (coldishFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (coldishFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        if (data.precip)! > 0.04 {
                            let shoes = "rain boots"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Shoes: " + (coldishFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        Text("Gloves: " + (coldishFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (coldishFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (coldishFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (coldishFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else { Text("Extra: " + (coldishFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        
                    }
                    HStack {
                        Image("coldishFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("coldishmFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
                
                if temp > 50 && temp <= 61{
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (warmishFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (warmishFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (warmishFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (warmishFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "rain boots, old sneakers"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Shoes: " + (warmishFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        Text("Gloves: " + (warmishFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (warmishFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (warmishFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (warmishFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else { Text("Extra: " + (warmishFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                    }
                    HStack {
                        Image("warmishFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("warmishmFund\(Int.random(in: 0 ... 4))").resizable().frame(width: 50, height: 100)
                    }
                    
                }
                
                if temp > 61 && temp <= 71{
                    
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (warmerFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        Text("Pants: " + (warmerFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (warmerFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (warmerFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "old sneakers"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Shoes: " + (warmerFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        Text("Gloves: " + (warmerFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (warmerFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (warmerFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        Text("Sunglasses: " + (warmerFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Extra: " + (warmerFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        
                    }
                    HStack {
                        Image("warmerFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                        Image("warmermFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    
                }
                
                if (temp > 71 && temp <= 86){
                    
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (hotFund["shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (hotFund["pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (hotFund["coats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (hotFund["socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "old sneakers"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else {Text("Shoes: " + (hotFund["shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        Text("Gloves: " + (hotFund["gloves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (hotFund["scarves"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (hotFund["hats"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (hotFund["sunglasses"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        
                        else {  Text("Extra: " + (hotFund["extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        
                    }
                    HStack {
                        Image("hotFund\(Int.random(in: 0 ... 4))").resizable().frame(width: 50, height: 100)
                        Image("hotFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                }
                
                
                if temp > 86 {
                    
                    
                    VStack(alignment: .leading){
                        Text("Shirts: " + (hawtFund["Shirts"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Pants: " + (hawtFund["Pants"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Coats: " + (hawtFund["Coats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Socks: " + (hawtFund["Socks"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let shoes = "old sneakers"
                            Text("Shoes: " + shoes).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Shoes: " + (hawtFund["Shoes"] ?? "ur mom")).alignmentGuide(.leading) { d in d[.leading] }}
                        Text("Gloves: " + (hawtFund["Gloves"] ?? "Always recommended, but maybe not the best choice")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Scarves: " + (hawtFund["Scarves"] ?? "Not recommended")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Hats: " + (hawtFund["Hats"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                        Text("Sunglasses: " + (hawtFund["Sunglasses"] ?? "Optional")).alignmentGuide(.leading) { d in d[.leading] }
                        
                        if (data.precip)! > 0.04 {
                            let extra = "Bring an umbrella!"
                            Text("Extra: " + extra).alignmentGuide(.leading) { d in d[.leading] }
                        }
                        else { Text("Extra: " + (hawtFund["Extra"] ?? "None")).alignmentGuide(.leading) { d in d[.leading] }}
                        
                        
                    }
                    HStack {
                        Image("hotFund\(Int.random(in: 0 ... 4))").resizable().frame(width: 50, height: 100)
                        Image("hotmFund\(Int.random(in: 0 ... 5))").resizable().frame(width: 50, height: 100)
                    }
                    
                    
                }
                
                
                
            }
            
        }.foregroundColor(Color.black).edgesIgnoringSafeArea(.all)
    }
}


struct ClassicView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicView(weather: Weather(), response : Response(), data : Data())
    }
}


