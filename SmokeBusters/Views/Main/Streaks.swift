import SwiftUI

struct StreakView: View {
    @State private var selectedLimit: Int?
    @State private var progress: Double = 1.0
    @State private var isSettingLimit = false
    @State private var showingDirections = false
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack {
                    Text("Limit: \(selectedLimit ?? 0)")
                        .font(.custom("Montserrat-Bold", size: 50))
                    CircleProgressBar(progress: progress, selectedLimit: selectedLimit)
                }
                
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                        .frame(width: 130, height: 50 )
                        .cornerRadius(20)
                        .shadow(radius: 2)
                    
                    Button(action: {
                        isSettingLimit = true
                    }) {
                        Text("Set New Limit")
                            .foregroundColor(.black)
                    }
                }
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Color(hue: 0.752, saturation: 0.032, brightness: 1.0))
                        .frame(width: 130, height: 50 )
                        .cornerRadius(20)
                        .shadow(radius: 2)
                    
                    Button(action: {
                        if let limit = selectedLimit, limit > 0 {
                            selectedLimit = limit - 1
                            progress = Double(limit - 1) / Double(limit)
                        }
                    }) {
                        Text("-1")
                            .foregroundColor(.black)
                    }
                }
                
                HStack {
                    Spacer()
                    Button(action: {
                        showingDirections = true
                    }) {
                        Image(systemName: "info.circle") // You can use any other symbol or text here
                            .font(.title)
                    }
                }
            }
            .navigationTitle("Cigarettes Limit!")
            .padding()
            .sheet(isPresented: $isSettingLimit) {
                // Your existing code...
            }
            .sheet(isPresented: $showingDirections, onDismiss: {
                showingDirections = false
            } ) {
                // Use the DirectionsView as the content of the overlay
                DirectionView()
            }
            
        }
        
        .padding()
        .actionSheet(isPresented: $isSettingLimit) {
            ActionSheet(
                title: Text("Set Cigarette Limit"),
                buttons: availableLimits.map { limit in
                        .default(Text("\(limit)")) {
                            selectedLimit = limit
                            progress = 1.0 // Set progress to full when limit is set
                        }
                    
                }
                
            )
            
            
        }
        
    }
    
    
    var availableLimits: [Int] {
        Array(0...50) // Customize this to your desired range of limits
    }
}

struct StreakView_Previews: PreviewProvider {
    static var previews: some View {
        StreakView()
    }
}

struct CircleProgressBar: View {
    var progress: Double
    var color: Color = Color.green
    var selectedLimit: Int?
    var body: some View {
        
        
        
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.2)
                .foregroundColor(Color.gray)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
            
            
            
            
        }
        .frame(width: 300, height: 300)
    }
}

