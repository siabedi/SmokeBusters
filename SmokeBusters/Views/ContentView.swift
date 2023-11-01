//
//  ContentView.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    var pollutionManager = PollutionManager()
    @State var pollution: PollutionBody?
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                if let pollution = pollution {
                    HomeView(pollution: pollution)
                } else {
                    LoadingView()
                        .task {
                            do {
                                pollution = try await pollutionManager.getCurrentPollution(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("error getting pollution \(error)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
            
            
        }.background(Color.blue)
            .preferredColorScheme(.light)
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
