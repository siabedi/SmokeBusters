//
//  LimitModel.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/26/23.
//

import Foundation

class UserSettings: ObservableObject {
    static let shared = UserSettings()
    
    @Published var dailyLimit: Int {
        didSet {
            UserDefaults.standard.set(dailyLimit, forKey: "dailyLimit")
        }
    }
    
    init() {
        self.dailyLimit = UserDefaults.standard.integer(forKey: "dailyLimit")
    }
}
