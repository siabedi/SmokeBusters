//
//  PM10View.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/27/23.
//

import SwiftUI

struct PM10View: View {
    
    var pollution: PollutionBody
    
    var body: some View {
        
        VStack {
            
            
            ZStack{
                
                Rectangle()
                    .frame(width: 340, height: 200)
                    .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                    .cornerRadius(20)
                
                
                
                
                
                
                
                HStack {
                    
                    Spacer()
                    
                    Text("PM")
                        .font(.custom("Montserrat-Bold", size:70))
                        .padding(.bottom, 80)
                        
                    
                    Spacer()
                    
                    Image("pm10")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 110)
                        .padding()
                        .padding(.top, 20)
                        .padding(.bottom, 80)
                        
                    
                    Spacer()
                    
                }
                
                
                
                ProgressBarPM10(width: 200, height: 15, pollution: previewPollution)
                    .padding(.top, 100)
                    .padding(.trailing, 80)
                
                
                
            }
            
            
            
            
        }
    }
            
        
    }
#Preview {
    PM10View(pollution: previewPollution)
}
