//
//  ProgressBarPM10.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

import SwiftUI

struct ProgressBarPM10: View {
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 40
    var pollution: PollutionBody
    
    var body: some View {
        
        let multiplier = width / 100
        
        VStack (alignment: .leading) {
            
            
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height, style: .continuous)
                    .frame(width: width, height: height)
                    .foregroundColor(Color.black.opacity(0.1))
                
                
                if pollution.list.first?.components["pm10"] ?? 0 <= 20  {
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["pm10"] ?? 0 > 20 && pollution.list.first?.components["pm10"] ?? 0 <= 50 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["pm10"] ?? 0 > 50 && pollution.list.first?.components["pm10"] ?? 0 <= 100 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["pm10"] ?? 0 > 100 && pollution.list.first?.components["pm10"] ?? 0 <= 200 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["pm10"] ?? 0 >= 200 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                
                
            }
            .foregroundColor(.clear)
            
            if pollution.list.first?.components["pm10"] ?? 0 <= 20 {
                
                Text("Excellent!")
                    .font(.custom("Mont-Book", size: 19))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["pm10"] ?? 0 > 20 && pollution.list.first?.components["pm10"] ?? 0 <= 50 {
                
                Text("Fair!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["pm10"] ?? 0 > 50 && pollution.list.first?.components["pm10"] ?? 0 <= 100 {
                
                Text("Moderate!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["pm10"] ?? 0 > 100 && pollution.list.first?.components["pm10"] ?? 0 <= 200 {
                
                Text("Poor!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["pm10"] ?? 0 > 200 {
                
                Text("Very Poor!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
        }
        
    }
}

#Preview {
    ProgressBarPM10(pollution: previewPollution)
}
