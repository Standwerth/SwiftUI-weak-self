//
//  ContentView.swift
//  Swift weak self
//
//  Created by Anton Standwerth on 2021-11-08.
//

import SwiftUI

// Automatic reference countring (ARC): https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html

struct MainView: View {
    
    @AppStorage("countSecondView") var countSecondView: Int?
    @AppStorage("countThirdView") var countThirdView: Int?
    
    init() {
        
        countSecondView = 0
        countThirdView = 0
        
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                NavigationLink("With weak self", destination: SecondView())
                NavigationLink("Without weak self", destination: ThirdView())
                    .navigationTitle("Screen 1")
            }.position(x: (getWidth() / 2), y: 350)
            
        }.overlay(
        
            HStack {
                
                VStack {
                    
                    Text("\(countSecondView ?? 0)").font(.largeTitle)
                    Text("Count with weak self").font(.footnote)
                    
                }.padding()
                
                VStack {
                    
                    Text("\(countThirdView ?? 0)").font(.largeTitle)
                    Text("Count without weak self").font(.footnote)
                    
                }.padding()
                
            }
            
        )
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension View {
    
    func getWidth() -> CGFloat {
        
        return UIScreen.main.bounds.width
        
    }
    
    func getHeight() -> CGFloat {
        
        return UIScreen.main.bounds.height
        
    }
    
}
