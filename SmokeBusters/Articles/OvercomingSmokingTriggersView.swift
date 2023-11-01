import SwiftUI

struct OvercomingSmokingTriggersView: View {
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
                    TipView(title: "1. Identify Your Triggers", content: "Recognize situations, emotions, or activities that make you want to smoke.")
                    TipView(title: "2. Find Alternatives", content: "When a trigger arises, have a plan for healthy alternatives to smoking.")
                    TipView(title: "3. Stay Busy", content: "Engage in activities that keep your mind and body occupied.")
                    TipView(title: "4. Practice Relaxation Techniques", content: "Learn relaxation methods like deep breathing to manage stress.")
                    TipView(title: "5. Get Support", content: "Share your triggers and coping strategies with a support group or therapist.")
                }
            }
            .navigationTitle("Overcoming Smoking Triggers")
        }
    }
}

struct OvercomingSmokingTriggersView_Previews: PreviewProvider {
    static var previews: some View {
        OvercomingSmokingTriggersView(article: Article(name: "Overcoming Smoking Triggers", image: "habit"))
    }
}

struct TipViewOT: View {
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

