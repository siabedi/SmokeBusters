//
//  PM10Detail.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

//
//  CODetail.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

import SwiftUI

struct PM10Detail: View {
    var body: some View {
        
        TabView {
            InfoContent(
                title: "Particulate Matter (PM10)",
                imageName: "pm10", // Replace with the actual image name for PM10
                description: "Particulate Matter (PM10) refers to tiny particles or droplets in the air that are 10 micrometers or smaller in diameter. PM10 can include various substances such as dust, pollen, smoke, and liquid droplets. These particles can be harmful when inhaled into the lungs.",
                additionalInfo: "PM10 particles come from various sources, including dust from construction sites, industrial processes, and vehicle emissions. These particles can have a significant impact on air quality and human health. Fine particulate matter (PM2.5) is another related category, with even smaller particles that can penetrate deeper into the lungs.",
                impact: "Exposure to PM10 can lead to respiratory problems and other health issues. When inhaled, these particles can irritate the respiratory system, leading to coughing, shortness of breath, and throat irritation. Long-term exposure to PM10 can contribute to chronic respiratory diseases and heart problems.",
                headings: ["What is PM10?", "How Does It Affect Air?", "Additional"]
            )
            .tabItem {
                Label("PM10 Info", systemImage: "cloud.fog")
            }
            InfoContent(
                title: "Air Quality Index (AQI) for Particulate Matter (PM10)",
                imageName: "pm10", // Replace with the actual image name for PM10
                description: "The Air Quality Index (AQI) is a standardized system used to measure and communicate air quality levels for Particulate Matter (PM10). It helps assess how clean or polluted the air is and what associated health effects might be a concern.",
                additionalInfo: "PM10 levels are categorized into different groups, each indicating a different level of air quality and potential health risks:\n\nExcellent: PM10 levels are very low, typically below 20 µg/m³ (micrograms per cubic meter). At this level, there is minimal to no risk to human health, and the air quality is excellent, considered safe to breathe.\n\nFair: PM10 levels in the fair category may range from 20 to 50 µg/m³. While these levels are still relatively low, they might be noticeable in certain situations, but they are not considered harmful to most individuals.\n\nModerate: PM10 levels in the moderate category typically range from 50 to 100 µg/m³. At these levels, there may be a slight health risk for people who are particularly sensitive to PM10, such as those with certain pre-existing medical conditions.\n\nPoor: PM10 levels in the poor category are higher, often exceeding 100 µg/m³. In this range, there is an increased risk to human health, especially for individuals with pre-existing heart or respiratory conditions. Prolonged exposure to these levels can lead to health problems.\n\nVery Poor: When PM10 levels are classified as very poor, they can be dangerously high, typically exceeding 250 µg/m³. Exposure to such levels is associated with severe health risks, including life-threatening conditions. Evacuation or seeking immediate medical attention may be necessary in extreme cases.",
                impact: "High levels of PM10 can cause respiratory problems, including coughing, throat irritation, and reduced lung function. Individuals with pre-existing respiratory conditions, such as asthma, may experience worsened symptoms when exposed to elevated PM10 levels. Long-term exposure to high PM10 levels can result in chronic respiratory diseases and cardiovascular problems.",
                headings: ["AQI for Particulate Matter (PM10)", "Categories for PM10", "Health Impact"]
            )
            .tabItem {
                Label("AQI Info", systemImage: "wind")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
struct PMDetail_Previews: PreviewProvider {
    static var previews: some View {
        PM10Detail()
    }
}

struct InfoContentPM10: View {
    let title: String
    let imageName: String?
    let description: String
    let additionalInfo: String?
    let impact: String?
    let headings: [String]
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                
                if let imageName {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 200)
                        .cornerRadius(10)
                        .padding(.leading, 50)
                    
                }
                
                
                Text(headings[0])
                    .padding(.leading, 12)
                    .bold()
                    .font(.title2)
                
                
                Text(description)
                    .padding()
                
                Text(headings[1])
                    .padding(.leading, 12)
                    .bold()
                    .font(.title2)
                
                if let additionalInfo {
                    Text(additionalInfo)
                        .padding()
                }
                
                Text(headings[2])
                    .padding(.leading, 12)
                    .bold()
                    .font(.title2)
                
                if let impact {
                    Text(impact)
                        .padding()
                }
                
                
                
                
                
                
            }
            
            Spacer()
        }
        .navigationTitle(title)
    }
    
}


struct AQICategoryViewPM10: View {
    let category: String
    let color: Color
    let description: String
    
    var body: some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 30, height: 30)
                .overlay(
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.white)
                )
            
            Text(description)
                .font(.body)
        }
    }
}

#Preview{
    PM10Detail()
    
}

