//
//  DirectionView.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/31/23.
//

import SwiftUI

struct DirectionView: View {
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.directions
                    .ignoresSafeArea()
                
                VStack (alignment: .leading) {
                    

                    Text("1. Set your cigarette limit.")
                        .font(.custom("Montserrat-Bold", size: 23))
                    Text("Tap 'Set New Limit' to choose the number \n of cigarettes you want to limit yourself to.")
                        .padding(.top, 5)
                        .font(.system(size: 18))
                        .fontDesign(.rounded)

                    Text("2. Track your progress.")
                        .font(.custom("Montserrat-Bold", size: 23))
                        .padding(.top, 10)
                    Text("The circle progress bar shows your progress towards your set limit.")
                        .padding(.top, 5)
                        .font(.system(size: 18))
                        .fontDesign(.rounded)

                    Text("3. Adjust your limit.")
                        .font(.custom("Montserrat-Bold", size: 23))
                        .padding(.top, 10)
                    Text("You can decrease your limit by tapping the '-1' button.")
                        .padding(.top, 5)
                        .font(.system(size: 18))
                        .fontDesign(.rounded)

                    Text("4. Stick With It!")
                        .font(.custom("Montserrat-Bold", size: 23))
                        .padding(.top, 10)
                    Text("Make sure to set reasonable goals that you can progress from! No need to force yourself!")
                        .padding(.top, 5)
                        .font(.system(size: 18))
                        .fontDesign(.rounded)

                    Spacer()
                    
                    HStack {
                        Spacer()
                        Image("encouragement")
                        Spacer()
                        
                        
                    }
                        
                    
                }
                .padding()
                .navigationTitle("Instructions")
            }
            
        }
    }
}

struct DirectionInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionView()
    }
}

