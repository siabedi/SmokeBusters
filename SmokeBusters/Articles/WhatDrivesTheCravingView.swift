import SwiftUI

struct WhatDrivesTheCravingView: View {
    var article: Article

    var body: some View {
        NavigationView {
            VStack {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200) // Adjust the height as needed
                
                Text(article.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView {
                    TipView(title: "1. Understand Nicotine's Effects", content: "Learn about how nicotine affects your body and brain.")
                    TipView(title: "  2. Identify Emotional Triggers", content: "Recognize emotions like stress or sadness that drive cravings.")
                    TipView(title: "3. Find Healthier Coping Mechanisms", content: "Replace smoking with healthier ways to cope with emotions.")
                    TipView(title: "4. Create a Support System", content: "Share your cravings and progress with friends, family, or a support group.")
                    TipView(title: "5. Stay Committed", content: "Stay dedicated to quitting even when facing strong cravings.")
                }
            }
            .navigationTitle("What Drives the Craving?")
        }
    }
}

struct WhatDrivesTheCravingView_Previews: PreviewProvider {
    static var previews: some View {
        WhatDrivesTheCravingView(article: Article(name: "What Drives the Craving?", image: "craving"))
    }
}

struct TipViewDC: View {
    var title: String
    var content: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal)

            Text(content)
                .padding(.horizontal)
        }
    }
}

