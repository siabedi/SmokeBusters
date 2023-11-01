//
//  ArticleView.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/30/23.
//

import SwiftUI


struct ArticleView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(articleList) { article in
                        NavigationLink(destination: getDetailView(for: article)) {
                            ArticleCard(article: article)
                        }
                        .foregroundColor(.black)
                    }
                }
                .padding()
            }
            .navigationTitle("Explore!")
        }
    }
    
    // Function to determine the appropriate detail view for the article
    func getDetailView(for article: Article) -> some View {
        switch article.name {
        case "Tips to Quit Smoking":
            return AnyView(TipsToQuitSmokingView(article: article))
        case "Long-Term Effects of Smoking":
            return AnyView(LongTermEffectsView(article: article))
        case "What is Nicotine Addiction?":
            return AnyView(NicotineAddictionView(article: article))
        case "Overcoming Smoking Triggers":
            return AnyView(OvercomingSmokingTriggersView(article: article))
        case "What Drives the Craving?":
            return AnyView(WhatDrivesTheCravingView(article: article))
        case "How Does Second-Hand Smoke Affect Us?":
            return AnyView(SecondHandSmokeView(article: article))
        default:
            return AnyView(EmptyView())
        }
    }
}


#Preview {
    ArticleView()
}
