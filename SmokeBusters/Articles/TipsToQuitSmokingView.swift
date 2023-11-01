import SwiftUI

struct TipsToQuitSmokingView: View {
    var article: Article

    var body: some View {
        
        
        NavigationView {
            VStack {
                Image(article.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200) // Adjust the height as needed
                
                Text("5 Tips To Quit Smoking!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView {
                    TipView(title: "1. Set a Quit Date", content: "Choose a specific date to quit smoking and mark it on your calendar. This will give you a clear goal to work towards.")
                    TipView(title: " 2. Find Support", content: " Share your goal with friends and family or \n seek support from a quitline or support group.")
                    TipView(title: "3. Identify Triggers", content: "Recognize situations that make you want to smoke. Avoid or find alternatives for these triggers.")
                    TipView(title: "4. Nicotine Replacement Therapy", content: "Consider using nicotine replacement products like patches or gum to reduce withdrawal symptoms.")
                    TipView(title: "5. Stay Active", content: "Regular physical activity can help reduce cravings and improve your overall well-being.")
                }
                
            }
            .navigationTitle("Tips to Quit Smoking")
        }
        
    }
}

struct TipsToQuitSmokingView_Previews: PreviewProvider {
    static var previews: some View {
        TipsToQuitSmokingView(article: Article(name: "Tips to Quit Smoking", image: "tips"))
    }
}

struct TipView: View {
    var title: String
    var content: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.bold)
                .padding(.horizontal)
                .font(.custom("Montserrat-Bold", size: 20))
            Text(content)
                .padding(.horizontal)
        }
    }
}

