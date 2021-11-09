//
//  SecondView.swift
//  Swift weak self
//
//  Created by Anton Standwerth on 2021-11-08.
//

import SwiftUI

struct SecondView: View {
    
    @StateObject var vm = SecondViewViewModel()
    
    var body: some View {
        
        VStack {
            Text("Second View: With weak self")
                .font(.headline)
                .padding()
            
        }.position(x: (getWidth() / 2), y: 350)
        
        if let data = vm.data {
            
            Text(data)
            
        }
        
    }
    
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
