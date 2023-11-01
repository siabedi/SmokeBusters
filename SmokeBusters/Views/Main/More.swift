import SwiftUI
import WebKit
struct LinkInfo {
    var title: String
    var url: String
}

struct LinkView: View {
    
    
    let links: [LinkInfo] = [
        LinkInfo(title: "CDC - Health Effects of Cigarette Smoking", url: "https://www.cdc.gov/tobacco/data_statistics/fact_sheets/health_effects/effects_cig_smoking/index.htm"),
        LinkInfo(title: "Cleveland Clinic - Smoking", url: "https://my.clevelandclinic.org/health/articles/17488-smoking"),
        LinkInfo(title: "KidsHealth - Teen Smoking", url: "https://kidshealth.org/en/teens/smoking.html"),
        LinkInfo(title: "American Lung Association - Health Effects of Smoking", url: "https://www.lung.org/research/sotc/by-the-numbers/10-health-effects-caused-by-smoking"),
        LinkInfo(title: "Hopkins Medicine - Smoking & The Digestive System", url: "https://www.hopkinsmedicine.org/health/conditions-and-diseases/smoking-and-the-digestive-system")
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 130)
                            .foregroundColor(Color(hue: 0.564, saturation: 0.309, brightness: 1.0))
                            .opacity(0.4)
                            .cornerRadius(10)
                        
                        VStack {
                            Text("Smoking Hotline")
                                .font(.custom("Mont-Book", size: 20))
                                .padding(.top, 7)
                                .padding(.bottom, 2)
                            
                            Text("1-800-662-4357")
                                .font(.custom("Montserrat-Bold", size: 30))
                                .foregroundColor(Color(hue: 0.564, saturation: 0.951, brightness: 0.473))
                                .padding(.bottom, 40)
                        }
                    }
                    .padding()
                    
                    ForEach(links, id: \.title) { link in
                        LinkCell(linkInfo: link)
                            .padding(20)
                    }
                }
                .navigationBarTitle("More!")
            }
            
        }
        
    }
}

struct LinkCell: View {
    var linkInfo: LinkInfo
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 100) // Adjust the height of the rectangle
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color(hue: 0.682, saturation: 0.744, brightness: 0.407)]), startPoint: .topLeading, endPoint: .bottomTrailing)) // Customize the rectangle's appearance
                .cornerRadius(10)
                
                .overlay(
                    NavigationLink(destination: WebView(url: linkInfo.url)) {
                        Text(linkInfo.title)
                            .foregroundColor(.white)
                            
                            .font(.custom("Montserrat-Bold", size: 25))
                    }
                )
                .onTapGesture {
                    if let url = URL(string: linkInfo.url) {
                        UIApplication.shared.open(url)
                    }
                }
        }
    }
}


// Define WebView here (similar to the previous WebView implementation)

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}

struct WebView: UIViewRepresentable {
    let url: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
