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

/*
 if isRaining == true{
    shoes = "rain boots, snow boots, or overall waterproof shoes"
 }*/
// light rain: precipitation rate is < 2.5 mm (0.098 in) per hour
// Moderate rain — when the precipitation rate is between 2.5 mm - 7.6 mmper hour
// heavy rain :  > 7.6 mm per hour

//change so its not force unwrapping eventually
