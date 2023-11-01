import SwiftUI

struct NicotineAddictionView: View {
    var article: Article

    var body: some View {
        
        NavigationView{
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
                    TipView(title: "1. Understanding Nicotine", content: "Nicotine is a highly addictive substance found in tobacco. Learn about its effects on the brain and body.")
                    TipView(title: "2. Set a Quit Plan", content: "Create a structured plan to quit smoking, including strategies to manage cravings.")
                    TipView(title: "3. Behavioral Changes", content: "Identify and change the habits and routines associated with smoking.")
                    TipView(title: "4. Nicotine Replacement Therapy", content: "Consider using nicotine replacement products to ease withdrawal symptoms.")
                    TipView(title: "5. Seek Professional Help", content: "Don't hesitate to consult a healthcare professional or therapist for support in quitting.")
                }
            }
            .navigationTitle("Understanding NA")
        }
    }
}

struct NicotineAddictionView_Previews: PreviewProvider {
    static var previews: some View {
        NicotineAddictionView(article: Article(name: "What is Nicotine Addiction?", image: "nicotine"))
    }
}

struct TipViewNA: View {
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

