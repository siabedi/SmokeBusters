import SwiftUI

struct SecondHandSmokeView: View {
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
                    TipView(title: "1. Know the Risks", content: "Understand the health risks associated with exposure to secondhand smoke.")
                    TipView(title: "2. Protect Your Home", content: "Create a smoke-free environment in your home to protect your family.")
                    TipView(title: "3. Avoid Secondhand Smoke", content: "Stay away from places or people who smoke to reduce exposure.")
                    TipView(title: "4. Support Smoke-Free Policies", content: "Advocate for smoke-free policies in public areas and workplaces.")
                    TipView(title: "5. Educate Others", content: "Spread awareness about the dangers of secondhand smoke to help others.")
                }
            }
            .navigationTitle("How Does Second-Hand Smoke Affect Us?")
        }
    }
}

struct SecondHandSmokeView_Previews: PreviewProvider {
    static var previews: some View {
        SecondHandSmokeView(article: Article(name: "How Does Second-Hand Smoke Affect Us?", image: "secondhand"))
    }
}

struct TipViewSHS: View {
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

