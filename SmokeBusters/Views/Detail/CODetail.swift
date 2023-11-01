//
//  CODetail.swift
//  SmokeBusters
//
//  Created by Sia Bedi on 10/28/23.
//

import SwiftUI

struct CODetail: View {
    var body: some View {
        
        
        TabView {
            InfoContent(
                title: "Carbon Monoxide (CO)",
                imageName: "factoryco",
                description: "Carbon monoxide (CO) is a colorless, odorless gas that is produced by the incomplete combustion of carbon-containing fuels, such as wood, gasoline, and natural gas. It is a toxic gas that can be harmful to human health.",
                additionalInfo: "Carbon monoxide is a major air pollutant. It contributes to the formation of ground-level ozone, a harmful air pollutant that can cause respiratory problems. CO also plays a role in the creation of fine particulate matter (PM2.5), which can affect air quality and human health.",
                impact: "When carbon monoxide is inhaled, it binds to hemoglobin in the bloodstream, reducing the blood's ability to carry oxygen. This can lead to tissue damage and, in severe cases, can be life-threatening. Prolonged exposure to CO can result in respiratory and cardiovascular problems.", headings: ["What is Carbon Monoxide?", "How Does It Affect Air?", "Lung Effects"]
                                                                                                                                                       
            )
            .tabItem {
                Label("CO Info", systemImage: "cloud.fog")
            }
            InfoContent(
                title: "Air Quality Index (AQI)",
                imageName: "co",
                description: "The Air Quality Index (AQI) is a standardized system used to measure and communicate air quality levels.",
                additionalInfo: "Excellent: In this category, CO levels are very low, typically below 1 ppm. At such low levels, there is minimal to no risk to human health. The air quality is excellent, and it's considered safe to breathe.\n \nFair: CO levels in the fair category may range from 1 ppm to 5 ppm. While these levels are still relatively low, they might be noticeable in certain situations, but they are not considered harmful to most individuals.\n \nModerate: CO levels in the moderate category typically range from 6 ppm to 9 ppm. At these levels, there may be a slight health risk for people who are particularly sensitive to CO, such as those with certain pre-existing medical conditions.\n \nPoor: CO levels in the poor category are higher, often exceeding 10 ppm. In this range, there is an increased risk to human health, especially for individuals with pre-existing heart or respiratory conditions. Prolonged exposure to these levels can lead to health problems.\n \nVery Poor: When CO levels are classified as very poor, they can be dangerously high, typically exceeding 15 ppm. Exposure to such levels is associated with severe health risks, including life-threatening conditions. Evacuation or seeking immediate medical attention may be necessary in extreme cases.",
                impact: "Carbon monoxide is a chemical produced from the incomplete burning of natural gas or other products containing carbon. This includes motor vehicle exhaust, faulty heaters, fires, and factory emissions.", headings: ["AQI?", "Categories", "Additional"]
                
            )
            .tabItem {
                Label("AQI Info", systemImage: "wind")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct CODetail_Previews: PreviewProvider {
    static var previews: some View {
        CODetail()
    }
}

struct InfoContent: View {
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


struct AQICategoryView: View {
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
    CODetail()
                            
}
