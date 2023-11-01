//
//  ArticleCard.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/29/23.
//

import SwiftUI

struct ArticleCard: View {
    
    var article: Article
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(article.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180, height: 250)
                    .scaledToFit()
                
                
                VStack(alignment: .leading) {
                    Text(article.name)
                        .bold()
                     
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 10)
        
        }
    }
}

#Preview {
    ArticleCard(article: articleList[0])
}
