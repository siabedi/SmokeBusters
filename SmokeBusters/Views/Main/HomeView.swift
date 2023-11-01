//
//  TabBar.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/24/23.
//

import SwiftUI

struct HomeView: View {
    
    var pollution: PollutionBody
    @ObservedObject var quoteManager = QuoteManager()
    @State private var randomQuote: String?
    @State private var userInput = ""
    @State private var minutesSacrificed = 0
    
    
    var body: some View {
        
        
        TabView {
            
            NavigationView {
                
                ScrollView {
                    
                    VStack {
                        
                        HStack {
                            
                            Spacer()
                            
                            
                            ZStack {
                                
                                Rectangle()
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color.blue, Color.purple]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )
                                    .frame(width: 170, height: 210)
                                    .cornerRadius(20)
                                
                                VStack {
                                    
                                    Text("Pollution Level")
                                        .padding(.trailing)
                                    //.font(.title2)
                                        .padding(.top, 20)
                                        .font(.custom("Mont-Book", size: 20))
                                        .foregroundColor(.white)
                                    
                                    HStack {
                                        
                                        Spacer()
                                        
                                        Image("pollution")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 80)
                                            .padding(.bottom)
                                        
                                        
                                        
                                        Spacer()
                                        
                                        Text("\(pollution.list.first?.main.aqi ?? 0)")
                                        
                                            .font(.custom("Mont-Book", size: 68))
                                            .padding(.bottom)
                                            .foregroundColor(.white)
                                        
                                        Spacer()
                                        
                                    }
                                    
                                    
                                    
                                    
                                    if pollution.list.first?.main.aqi == 1 {
                                        Text("Excellent")
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.bottom)
                                            .foregroundColor(.white)
                                    }
                                    
                                    if pollution.list.first?.main.aqi == 2 {
                                        Text("Fair")
                                            .padding(.bottom)
                                    }
                                    if pollution.list.first?.main.aqi == 3 {
                                        Text("Moderate")
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.bottom)
                                    }
                                    if pollution.list.first?.main.aqi == 4 {
                                        Text("Poor")
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.bottom)
                                    }
                                    if pollution.list.first?.main.aqi == 5 {
                                        Text("Very Poor")
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.bottom)
                                    }
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                            
                            Spacer()
                            
                            
                            NavigationLink(destination: StreakView()) {
                                
                                ZStack {
                                    
                    
                                    
                                    Rectangle()
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color.blue, Color.purple]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                        .frame(width: 170, height: 210)
                                        .cornerRadius(20)
                                    
                                    VStack {
                                        
                                        Text("Click to Set Your Goal For Today!")
                                            .foregroundColor(.white)
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.top, 5)
                                            .padding(.leading, 5)
                                            .padding(.trailing, 5)
                                        
                                        Image("limit")
                                            .resizable()
                                            .scaledToFit()
                                    }
                                    
                                }
                                
                                Spacer()
                                
                            }
                            
                            
                           
                            
                            
                            
                            
                            
                            
                            //-------------------------------------------------------------------------
                            
                        }
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 20) // Adjust the corner radius as needed
                                .foregroundColor(Color(hue: 1.0, saturation: 0.002, brightness: 0.948)) // You can change this to the card's content
                                .padding(20) // Add some padding to create a margin
                            
                            
                            Text(randomQuote ?? "No quotes available")
                                .padding(.leading, 30)
                                .padding(.trailing, 30)
                                .multilineTextAlignment(.center)
                                .font(.custom("Mont-Book", size: 20))
                        }
                        .frame(width: 400, height: 180) // Adjust the size as needed
                        .cornerRadius(40)
                        
                        
                        .shadow(radius: 8)
                        
                        
                        CardView()
                            .frame(width: 400, height: 200)
                        
                        
                    }
                    
                }
                .navigationTitle("Smoke Busters!")
            }
            
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            .onAppear {
                if !quoteManager.quotes.isEmpty {
                    randomQuote = quoteManager.quotes.randomElement()?.text
                    
                }
                
            }
            Calculations(pollution: previewPollution)
                .tabItem {
                    Label("Calculate", systemImage: "plus.slash.minus")
                }
                .tag(1)
            
            ArticleView()
                .tabItem {
                    Label("Learn!", systemImage: "magnifyingglass")
                }
                .tag(2)
            
            LinkView()
                .tabItem {
                    Label("More!", systemImage: "book")
                }
                .tag(3)
        }
        
        
        
        //Text("AQI \(pollution.list.first?.main.aqi ?? 0)")
        //Text("CO: \(pollution.list.first?.components["co"] ?? 0.0)")
    }
}


struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView(pollution: previewPollution)
    }
}


