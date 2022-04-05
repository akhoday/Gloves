//
//  ClothingTime.swift
//  GlovesWeatherApp
//
//  Created by Alveena Khoday (student LM) on 3/30/22.
//

import Foundation

var weather : Weather = Weather()
var response : Response = Response()
var data : Data = Data()

var choice : String = ""

var isRaining : Bool = false
var shoes = ""
var hats = ""
var sunglasses = ""
var scarves = ""
var gloves = ""
var coats = ""
var pants = ""
var shirts = ""
var socks = " "
var extra = ""
var temp = (data.temp)!
var snow = (data.snow)!

var coldColdComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: "boots (uggs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldColdFund = [shirts: "", pants: "", coats: "", socks: "", shoes: "boots (uggs), sneakers(forces)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: "boots(uggs), sneakers(forces, converse, vans)", gloves: "", scarves: "", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]

var coldFund = [shirts: "", pants: "", coats: "", socks: "", shoes: "boots(uggs), sneakers(forces, converse, vans)", gloves: "recommended", scarves: "recommended", hats: "beanie, ear muffs, ski mask, head warmer headbands", sunglasses: "optional", extra: ""]


var coldishComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: " sneakers(forces, converse, vans, nike, adidas)", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]

var coldishFund = [shirts: "", pants: "", coats: "", socks: "", shoes: " sneakers(forces, converse, vans, nike, adidas)", gloves: "optional", scarves: "optional", hats: "optional winter hat", sunglasses: "optional", extra: ""]


var warmishComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "", scarves: "", hats: "", sunglasses: "optional", extra: ""]

var warmishFund = [shirts: "", pants: "", coats: "", socks: "", shoes: "sneakers(forces, conserve, vans, nike, adidas)", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]


var warmerComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: " sneakers(forces, conserve, vans, nike, adidas)", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]

var warmerFund = [shirts: "", pants: "", coats: "", socks: "", shoes: " sneakers(forces, conserve, vans, nike, adidas)", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]


var hotComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hotFund = [shirts: "", pants: "", coats: "", socks: "", shoes: "sneakers (converse, forces, vans), birkenstocks", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hawtComfy = [shirts: "", pants: "", coats: "", socks: "", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]

var hawtFund = [shirts: "", pants: "", coats: "", socks: "", shoes: "flip flops, birkenstocks, sandals, sneakers", gloves: "", scarves: "", hats: "baseball cap", sunglasses: "optional", extra: ""]













/*
func comfy()-> String{
    
    
    if (data.precip)! > 2.4{
        isRaining = true
    }
  
    //shoes for every temperature
    if temp < 21 || (temp > 22 && temp < 33){
        if isRaining == true {
            shoes = "Rain boots, Snow boots, Waterproof Shoes"
        }
        
        if snow > 0 {
            shoes = "Snow boots, Shoes w/ good soles"
        }
        else {
            shoes = "Boots(maybe Uggs), or Sneakers(like forces), Vans"
        }
    }
    
    
    if temp > 34 && temp < 51 {
        if isRaining == true {
            shoes = "Rainboots, Old Sneakers"
        }
        
        if snow > 0 {
            shoes = "No need for snow boots but good sole shoes"
        }
        else {
            shoes = "Boots(maybe Uggs), or Sneakers(Air Forces, Converse, Vans, Nike, Adidas) "
        }
        
    }
    
    if temp > 50 && temp < 61{
        if isRaining == true {
            
        }
        
        if snow > 0 {
            
        }
        else {
            shoes = "Boots(maybe Uggs), or Sneakers(like forces)"
        }
        
    }
    
    
    if (temp > 60 && temp < 71) || (temp > 70 && temp < 86) {
        if isRaining == true {
            
        }
        
        if snow > 0 {
            
        }
        else {
            shoes = "Boots(maybe Uggs), or Sneakers(like forces)"
        }
        
    }
    
    if temp > 85 {
        if isRaining == true {
            
        }
        
        if snow > 0 {
            
        }
        else {
            shoes = "Boots(maybe Uggs), or Sneakers(like forces)"
        }
        
    }
    
    return shoes */

/*
 if isRaining == true{
    shoes = "rain boots, snow boots, or overall waterproof shoes"
 }*/
// light rain: precipitation rate is < 2.5 mm (0.098 in) per hour
// Moderate rain — when the precipitation rate is between 2.5 mm - 7.6 mmper hour
// heavy rain :  > 7.6 mm per hour

//change so its not force unwrapping eventually

/*
 if temp < 21 {
     
 }
 
 if temp > 22 && temp < 33{
 }
 
 if temp > 34 && temp < 51 {
     
 }
 
 if temp > 50 && temp < 61{
     
 }
 
 if temp > 60 && temp < 71 {
     
 }
 
 if temp > 70 && temp < 86 {
     
 }
 
 if temp > 85 {
     
 }
 
 */

