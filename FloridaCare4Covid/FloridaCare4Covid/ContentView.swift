//
//  ContentView.swift
//  FloridaCare4Covid
//
//  Created by Reid  Efford on 3/30/20.
//  Copyright © 2020 Coastal Cloud. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
//        NavigationView {
            //VStack {
                WebView(request: URLRequest(url: URL(string: "https://ccpartial-fdemgrantsmanagement.cs123.force.com/Care4COVID/s/")!))
            //}
//        }
    }
}

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
