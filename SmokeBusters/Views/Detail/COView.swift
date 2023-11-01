//
//  COView.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/27/23.
//

import SwiftUI

struct COView: View {
    
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
                        
                        Text("CO")
                            .font(.custom("Montserrat-Bold", size:70))
                            .padding(.bottom, 80)
                            .padding(.trailing, 40)
                        
                        Spacer()
                        
                        Image("co")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 70)
                            .padding()
                            .padding(.bottom, 80)
                        
                        Spacer()
                        
                    }
                    
                    
                    
                    ProgressBarCO(width: 200, height: 15, pollution: previewPollution)
                        .padding(.top, 100)
                        .padding(.trailing, 80)
                    
                    
                    
                }
                
                
                
                
                
                
                
            
        }
            
        
    }
}



#Preview {
    COView(pollution: previewPollution)
}
