//
//  ThirdViewViewModel.swift
//  Swift weak self
//
//  Created by Anton Standwerth on 2021-11-08.
//

import SwiftUI

class ThirdViewViewModel: ObservableObject {
    
    @Published var data: String? = nil
    
    init() {
        
        print("INITIALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "countThirdView")
        UserDefaults.standard.set(currentCount + 1, forKey: "countThirdView")
        getData()
        
    }
    
    deinit {
        
        print("DEINITIALIZE NOW")
        let currentCount = UserDefaults.standard.integer(forKey: "countThirdView")
        UserDefaults.standard.set(currentCount - 1, forKey: "countThirdView")

        
    }
    
    func getData() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) { [weak self] in
            self?.data = "NEW DATA"
        }
        
    }
    
}
