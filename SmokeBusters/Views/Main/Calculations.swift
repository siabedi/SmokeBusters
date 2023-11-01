//
//  HomeView.swift
//  SmokeBustersTrial
//
//  Created by Sia Bedi on 10/26/23.
//

//
//  Calculations.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/25/23.
//

import SwiftUI

struct Calculations: View {
    
    var pollution: PollutionBody
    @State private var userInput = 0
    @State private var minutesSacrificed = 0
    @State private var buttonTapped = false
    
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    
                    
                    
                    ZStack{
                        
                        
                        
                        Rectangle()
                            .frame(width: 350, height: 140)
                            .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                            .cornerRadius(20)
                            .padding(.top, 13)
                        
                        
                        Text("Enter the amount of cigarettes you happen to smoke on average every day. This calculator is meant to help you visualize the cons of smoking and gain a tangible insight on its effects.")
                            .font(.custom("Mont-Book", size: 17))
                            .multilineTextAlignment(.center)
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                    }
                    
                    
                    
                    
                    
                    Stepper("Amount of Cigarettes on Average", value: $userInput, in: 0...100)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .foregroundStyle(.black)
                    
                    Text("Cigarettes: \(userInput)")
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                            .frame(width: 100, height: 50 )
                            .cornerRadius(20)
                            .shadow(radius: 2)
                        
                        Button("Calculate") {
                            if userInput >= 0 {
                                minutesSacrificed = userInput * 11
                                buttonTapped.toggle()
                            }
                        }
                        .foregroundStyle(.black)
                        
                    }
                    
                    
                    Text("You Have Sacrificed: \(minutesSacrificed) minutes.")
                        .font(.system(size: 18 ))
                        .bold()
                        .padding(.top)
                    Text("Air Quality Index: \(pollution.list.first?.main.aqi ?? 0)")
                        .font(.system(size: 18 ))
                        .padding(.bottom, 20)
                        .padding(.top, 5)
                        .bold()
                    
                    
                    if buttonTapped {
                        
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                                .cornerRadius(20)
                                .shadow(radius: 10)
                            
                            
                            
                            VStack (alignment: .center){
                                if Double(userInput) == 0 && minutesSacrificed == 0 {
                                    VStack {
                                        Text("Non-Smoker (0 cigarettes per day)")
                                            .underline()
                                            .font(.system(size: 22))
                                            .padding(.bottom, 10)
                                            .font(.custom("Mont-Book", size: 20))
                                            .padding(.top, 14)
                                        Text("Health Effects: Non-smokers are at the lowest risk for smoking-related health issues. They have a significantly lower risk of lung cancer, heart disease, and respiratory problems compared to smokers.")
                                            .padding(.bottom, 10)
                                            .padding(.horizontal)
                                            
                                        
                                    }
                                }
                                
                                
                                if minutesSacrificed >= 11 && minutesSacrificed <= 55{
                                    Text("Light Smoker (1-5 cigarettes per day)")
                                        .underline()
                                        .font(.system(size: 22))
                                        .padding(.bottom, 10)
                                        .font(.custom("Mont-Book", size: 20))
                                        .padding(.top, 14)
                                    Text("Health Effects: Light smokers still face health risks, including an increased risk of lung cancer and heart disease, though at a lower rate than heavy smokers. They may experience reduced lung function and an increased risk of chronic bronchitis.")
                                        .padding(.bottom, 10)
                                        .padding(.horizontal)
                                }
                                
                                if minutesSacrificed >= 66 && minutesSacrificed <= 165{
                                    Text("Moderate Smoker (6-15 cigarettes per day)")
                                        .underline()
                                        .font(.system(size: 22))
                                        .font(.custom("Mont-Book", size: 17))
                                        .padding(.bottom, 10)
                                        .padding(.top, 14)
                                    Text("Health Effects: Moderate smokers have a higher risk of lung cancer and heart disease compared to light smokers. They are more likely to experience shortness of breath, chronic cough, and other respiratory issues. \n ")
                                        .padding(.horizontal)
                                }
                                if minutesSacrificed >= 176 && minutesSacrificed <= 275{
                                    Text("Heavy Smoker (16-25 cigarettes per day)")
                                        .underline()
                                        .font(.custom("Mont-Book", size: 17))
                                        .font(.system(size: 22))
                                        .padding(.bottom, 10)
                                        .padding(.top, 14)
                                    Text("Health Effects: Heavy smokers face a significantly elevated risk of lung cancer, heart disease, stroke, and chronic obstructive pulmonary disease (COPD). They are more likely to experience severe respiratory symptoms, reduced exercise tolerance, etc. \n ")
                                        .padding(.horizontal)
                                }
                                
                                if minutesSacrificed >= 286{
                                    Text("Very Heavy Smoker (26+ cigarettes per day)")
                                        .underline()
                                        .font(.custom("Mont-Book", size: 17))
                                        .font(.system(size: 22))
                                        .padding(.bottom, 10)
                                        .padding(.top, 14)
                                    Text("Health Effects: Very heavy smokers are at the highest risk of severe health consequences. They have a substantially increased risk of lung cancer, heart disease, and various respiratory diseases. Quality of life is often greatly reduced, with significant shortness of breath and chronic health issues. \n ")
                                        .padding(.horizontal)
                                    
                                }
                                
                                if pollution.list.first?.main.aqi ?? 0 == 1 && minutesSacrificed > 0{
                                    Text("Warnings: Smoking is always harmful to your health, even in low pollution conditions. Consider quitting or reducing your smoking to protect your lungs.")
                                        .padding(.horizontal)
                                        
                                }
                                if pollution.list.first?.main.aqi ?? 0 == 2{
                                    Text("Warnings: Smoking is harmful, and in moderately polluted conditions, the impact on your respiratory system can be significant. It's important to consider quitting or reducing your smoking.")
                                        .padding(.horizontal)
                                }
                                if pollution.list.first?.main.aqi ?? 0 == 3{
                                    Text("Warnings: Smoking is hazardous to your health, and in fair air quality conditions, the combined effects of smoking and pollutants can worsen lung problems. Reducing or quitting smoking is strongly recommended.")
                                        .padding(.horizontal)
                                }
                                
                                if pollution.list.first?.main.aqi ?? 0 == 4{
                                    Text("Warnings: Smoking is extremely harmful, and in poor air quality conditions, the risks to your respiratory system are severe. Quitting smoking should be a priority to protect your health.")
                                        .padding(.horizontal)
                                }
                                if pollution.list.first?.main.aqi ?? 0 == 5{
                                    Text("Warnings: Smoking in very poor air quality conditions is a critical health risk. The air is already full of harmful particles, and smoking will significantly increase the damage to your lungs. Quitting smoking is highly advisable to safeguard your health.")
                                        .padding(.horizontal)
                                }
                            }
                            .padding(.bottom, 30)
                            
                        }
                    }
                    
                    Spacer()
                    
                    
                    
                    
                }
                
            }
            .navigationTitle("Calculate The Cost")
            
        }
        
        
    }
    
}


struct Calculations_Preview: PreviewProvider {
    static var previews: some View {
        Calculations(pollution: previewPollution)
    }
}

