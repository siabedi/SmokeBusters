//
//  ProgressBar.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/27/23.
//

import SwiftUI

struct ProgressBarCO: View {
    
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
                
                
                if pollution.list.first?.components["co"] ?? 0 <= 4400 {
                    
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 40, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["co"] ?? 0 > 4400 && pollution.list.first?.components["co"] ?? 0 <= 9400 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 80, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["co"] ?? 0 > 9400 && pollution.list.first?.components["co"] ?? 0 <= 12400 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 120, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["co"] ?? 0 > 12400 && pollution.list.first?.components["co"] ?? 0 <= 15400 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 160, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                if pollution.list.first?.components["co"] ?? 0 > 15400 {
                    
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: 200, height: height)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                }
                
                
                
            }
            .foregroundColor(.clear)
            
            if pollution.list.first?.components["co"] ?? 0 <= 4400 {
                
                Text("Excellent!")
                    .font(.custom("Mont-Book", size: 19))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["co"] ?? 0 > 4400 && pollution.list.first?.components["co"] ?? 0 <= 9400 {
                
                Text("Fair!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["co"] ?? 0 > 9400 && pollution.list.first?.components["co"] ?? 0 <= 12400 {
                
                Text("Moderate!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["co"] ?? 0 > 12400 && pollution.list.first?.components["co"] ?? 0 <= 15400 {
                
                Text("Poor!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
            
            if pollution.list.first?.components["co"] ?? 0 > 15400 {
                
                Text("Very Poor!")
                    .font(.custom("Mont-Book", size: 20))
                    .padding(.top, 10)
            }
        }
        
    }
}


#Preview {
    ProgressBarCO(pollution: previewPollution)
}
