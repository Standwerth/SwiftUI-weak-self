//
//  SecondViewViewModel.swift
//  Swift weak self
//
//  Created by Anton Standwerth on 2021-11-08.
//

import SwiftUI

class SecondViewViewModel: ObservableObject {
    
    @Published var data: String? = nil
    
    init() {
        
        print("INITIALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "countSecondView")
        UserDefaults.standard.set(currentCount + 1, forKey: "countSecondView")
        getData()
        
    }
    
    deinit {
        
        print("DEINITIALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "countSecondView")
        UserDefaults.standard.set(currentCount - 1, forKey: "countSecondView")

        
    }
    
    func getData() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) {
            self.data = "NEW DATA"
        }
        
    }
    
}

