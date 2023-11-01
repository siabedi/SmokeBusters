//
//  ModelData.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/24/23.
//

import Foundation

var previewPollution: PollutionBody = load("pollutionData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldnt find \(filename) in bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldnt load \(filename) from main bundle\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldnt parse \(filename) as \(T.self): \n\(error)")
    }
}
