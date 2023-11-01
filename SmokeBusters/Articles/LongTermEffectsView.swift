import SwiftUI

struct LongTermEffectsView: View {
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
                    TipView(title: "1. Increased Health Risks", content: "Long-term smoking can lead to various health issues, including heart disease, lung cancer, and respiratory problems.")
                    TipView(title: "2. Premature Aging", content: "Smoking accelerates the aging process, leading to wrinkles, yellowing teeth, and other signs of premature aging.")
                    TipView(title: "3. Financial Burden", content: "Smoking is an expensive habit, and the long-term cost can be a significant financial burden.")
                    TipView(title: "4. Impact on Others", content: "Secondhand smoke can harm those around you, increasing their health risks.")
                    TipView(title: "5. Quitting Benefits", content: "The good news is that quitting smoking at any time can lead to health improvements and a longer life.")
                }
            }
            .navigationTitle("Long-Term Effects of Smoking")
        }
    }
}

struct LongTermEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        LongTermEffectsView(article: Article(name: "Long-Term Effects of Smoking", image: "longterm"))
    }
}

struct TipViewLEV: View {
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

