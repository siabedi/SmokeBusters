//
//  NO2Detail.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

import SwiftUI

struct NO2Detail: View {
    var body: some View {
        TabView {
            InfoContent(
                title: "Nitrogen Dioxide (NO2)",
                imageName: "no2", // Replace with the actual image name for NO2
                description: "Nitrogen Dioxide (NO2) is a reddish-brown gas that is a byproduct of combustion processes, including those occurring in vehicles and industrial facilities. It is a significant air pollutant with harmful effects on human health and the environment.",
                additionalInfo: "NO2 is formed in the atmosphere when nitrogen oxides (NOx) react with other substances. It plays a role in the creation of ground-level ozone and fine particulate matter (PM2.5), both of which can affect air quality and human health. NO2 exposure can irritate the respiratory system and lead to various health problems.",
                impact: "Exposure to high levels of NO2 can cause respiratory problems, including coughing, wheezing, and reduced lung function. Individuals with pre-existing respiratory conditions may experience worsened symptoms when exposed to elevated NO2 levels. Long-term exposure to NO2 can contribute to chronic respiratory diseases and heart problems.",
                headings: ["What is Nitrogen Dioxide (NO2)?", "How Does It Affect Air?", "Additional"]
            )
            .tabItem {
                Label("NO2 Info", systemImage: "cloud.fog")
            }
            InfoContent(
                title: "Air Quality Index (AQI) for Nitrogen Dioxide (NO2)",
                imageName: "no2", // Replace with the actual image name for NO2
                description: "The Air Quality Index (AQI) is a standardized system used to measure and communicate air quality levels for Nitrogen Dioxide (NO2). It helps assess how clean or polluted the air is and what associated health effects might be a concern.",
                additionalInfo: "NO2 levels are categorized into different groups, each indicating a different level of air quality and potential health risks:\n\nExcellent: NO2 levels are very low, typically below 20 ppb (parts per billion). At this level, there is minimal to no risk to human health, and the air quality is excellent, considered safe to breathe.\n\nFair: NO2 levels in the fair category may range from 20 to 50 ppb. While these levels are still relatively low, they might be noticeable in certain situations, but they are not considered harmful to most individuals.\n\nModerate: NO2 levels in the moderate category typically range from 50 to 100 ppb. At these levels, there may be a slight health risk for people who are particularly sensitive to NO2, such as those with certain pre-existing medical conditions.\n\nPoor: NO2 levels in the poor category are higher, often exceeding 100 ppb. In this range, there is an increased risk to human health, especially for individuals with pre-existing heart or respiratory conditions. Prolonged exposure to these levels can lead to health problems.\n\nVery Poor: When NO2 levels are classified as very poor, they can be dangerously high, typically exceeding 200 ppb. Exposure to such levels is associated with severe health risks, including life-threatening conditions. Evacuation or seeking immediate medical attention may be necessary in extreme cases.",
                impact: "High levels of NO2 can cause respiratory problems, including coughing, wheezing, and reduced lung function. Individuals with pre-existing respiratory conditions, such as asthma, may experience worsened symptoms when exposed to elevated NO2 levels. Long-term exposure to high NO2 levels can result in chronic respiratory diseases and cardiovascular problems.",
                headings: ["AQI for Nitrogen Dioxide (NO2)", "Categories for NO2", "Health Impact"]
            )
            .tabItem {
                Label("AQI Info", systemImage: "wind")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


#Preview {
    NO2Detail()
}
