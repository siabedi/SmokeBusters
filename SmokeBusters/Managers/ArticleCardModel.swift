//
//  ArticleCardModel.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/29/23.
//

import SwiftUI

struct Article: Identifiable {
    var id = UUID()
    var name: String
    var image: String

}

var articleList = [Article(name: "Tips to Quit Smoking", image: "tips"),
Article(name: "Long-Term Effects of Smoking", image: "longterm"),
Article(name: "What is Nicotine Addiction?", image: "nicotine"),
Article(name: "Overcoming Smoking Triggers", image: "habit"),
Article(name: "What Drives the Craving?", image: "craving"),
Article(name: "How Does Second-Hand Smoke Affect Us?", image: "secondhand")]
