//
//  WebView.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 3/23/22.
//

import Foundation
import SwiftUI

import WebKit



struct SwiftUIWebView : UIViewRepresentable{

    

    let url: URL?

    

    func makeUIView(context: Context) -> WKWebView {

        var prefs = WKWebpagePreferences()

        prefs.allowsContentJavaScript = true

        let config = WKWebViewConfiguration()

        config.defaultWebpagePreferences = prefs

        return WKWebView(frame: .zero, configuration: config)

    }

    

    func updateUIView(_ uiView: WKWebView, context: Context) {

        guard let url = url else{

            return

        }

        let request = URLRequest(url: url)

        uiView.load(request)

    }

    

    


}

