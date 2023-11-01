//
//  CODetail.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

import SwiftUI

struct O3Detail: View {
    var body: some View {
        
        
        TabView {
            InfoContent(
                title: "Ozone (O3)",
                imageName: "o3", // Replace with the actual image name for Ozone
                description: "Ozone (O3) is a reactive, colorless gas that is a major component of smog. It is a significant air pollutant and can have harmful effects on human health and the environment.",
                additionalInfo: "Ozone is formed in the atmosphere when pollutants from vehicles, industrial facilities, and other sources undergo chemical reactions in the presence of sunlight. Ground-level ozone can irritate the respiratory system, leading to a variety of health problems. Ozone is also a key contributor to the formation of fine particulate matter (PM2.5), which can impact air quality and human health.",
                impact: "Exposure to high levels of ozone can cause respiratory problems, including coughing, throat irritation, and reduced lung function. Individuals with pre-existing respiratory conditions, such as asthma, may experience worsened symptoms when exposed to elevated ozone levels. Prolonged exposure to ozone can result in a range of health issues, including lung damage and cardiovascular problems.",
                headings: ["What is Ozone (O3)?", "How Does It Affect Air?", "Additional"]
            )
            .tabItem {
                Label("CO Info", systemImage: "cloud.fog")
            }
            InfoContent(
                title: "Air Quality Index (AQI) for Ozone (O3)",
                imageName: "o3", // Replace with the actual image name for Ozone
                description: "The Air Quality Index (AQI) is a standardized system used to measure and communicate air quality levels for Ozone (O3). It helps assess how clean or polluted the air is and what associated health effects might be a concern.",
                additionalInfo: "Ozone levels are categorized into five main groups, each indicating a different level of air quality and potential health risks:\n\nExcellent: Ozone levels are very low, typically below 50 ppb (parts per billion). At this level, there is minimal to no risk to human health, and the air quality is excellent, considered safe to breathe.\n\nFair: Ozone levels in the fair category may range from 50 to 100 ppb. While these levels are still relatively low, they might be noticeable in certain situations, but they are not considered harmful to most individuals.\n\nModerate: Ozone levels in the moderate category typically range from 100 to 150 ppb. At these levels, there may be a slight health risk for people who are particularly sensitive to ozone, such as those with certain pre-existing medical conditions.\n\nPoor: Ozone levels in the poor category are higher, often exceeding 150 ppb. In this range, there is an increased risk to human health, especially for individuals with pre-existing heart or respiratory conditions. Prolonged exposure to these levels can lead to health problems.\n\nVery Poor: When Ozone levels are classified as very poor, they can be dangerously high, typically exceeding 200 ppb. Exposure to such levels is associated with severe health risks, including life-threatening conditions. Evacuation or seeking immediate medical attention may be necessary in extreme cases.",
                impact: "High levels of ozone can cause respiratory problems, including irritation of the eyes, nose, and throat, coughing, and breathing difficulties. Individuals with pre-existing respiratory conditions, such as asthma, may experience worsened symptoms when exposed to elevated ozone levels. Long-term exposure to high ozone levels can result in lung damage and cardiovascular problems.",
                headings: ["AQI for Ozone (O3)", "Categories for Ozone (O3)", "Health Impact"]
            )

            .tabItem {
                Label("AQI Info", systemImage: "wind")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct O3Detail_Previews: PreviewProvider {
    static var previews: some View {
        O3Detail()
    }
}

struct InfoContentO3: View {
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


struct AQICategoryViewO3: View {
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
    O3Detail()
                            
}

