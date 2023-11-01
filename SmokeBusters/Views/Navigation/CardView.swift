//
//  Calculate.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/25/23.
//

import SwiftUI

struct CardView: View {
    
    private let views: [AnyView] = [
        AnyView(NavigationLink(destination: CODetail()) {
            COView(pollution: previewPollution)
                .foregroundColor(.black)
        }),
        AnyView(NavigationLink(destination: O3Detail()) {
            O3View(pollution: previewPollution)
                .foregroundColor(.black)
        }),
        AnyView(NavigationLink(destination: PM10Detail()) {
            PM10View(pollution: previewPollution)
                .foregroundColor(.black)
        }),
        AnyView(NavigationLink(destination: NO2Detail()) {
            NO2View(pollution: previewPollution)
                .foregroundColor(.black)
        }),
    ]
    
    var body: some View {
        
        
        
            VStack {
                
                
                TabView {
                    ForEach(0..<views.count, id: \.self) { index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                            views[index]
                        }
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
                
            }
            
        
            }
        }

#Preview {
    CardView()
}
