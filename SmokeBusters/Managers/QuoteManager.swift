//
//  QuoteManager.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/25/23.
//


import Foundation

// Assuming you have the JSON file named "QuoteDecoder.json" in your app's bundle

class QuoteManager: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "quotes", withExtension: "json")
        else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let quotes = try? JSONDecoder().decode([Quote].self, from: data!)
        
        self.quotes = quotes!
    }
}



struct Quote: Decodable {
    let text: String
}
