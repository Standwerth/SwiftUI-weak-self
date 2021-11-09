//
//  ThirdView.swift
//  Swift weak self
//
//  Created by Anton Standwerth on 2021-11-08.
//

import SwiftUI

struct ThirdView: View {
    
    @StateObject var vm = ThirdViewViewModel()
    
    var body: some View {
        
        VStack {
            Text("Third View: Without weak self")
                .font(.headline)
                .padding()
            
        }.position(x: (getWidth() / 2), y: 350)
        
        if let data = vm.data {
            
            Text(data)
            
        }
        
    }
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
