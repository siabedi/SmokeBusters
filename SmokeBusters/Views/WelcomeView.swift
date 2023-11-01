import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.yellow, Color.orange]),
                startPoint: .top,
                endPoint: .bottom
                    
            )
            .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Text("Welcome to Smoke Busters!")
                    .font(.custom("Montserrat-Bold", size: 45))
                    .multilineTextAlignment(.center)
                
                // Reduce the bottom padding
                Spacer()
                
                Image("HomeImage")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 400, height: 350) // Set a specific size for the image
                
                Spacer()
                
                Text("Please share your location to help us calculate health statistics on your journey.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                LocationButton(.shareCurrentLocation) {
                    locationManager.requestLocation()
                }
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(25)
                .foregroundColor(.white)
                .font(.headline)
                .bold()
                .shadow(radius: 5)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

