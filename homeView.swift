import SwiftUI

extension Color {
    init(hex: UInt) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}

struct homeView: View {
    @State private var isTaqdeerImageTapped = false

    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Spacer().frame(height: 20) // Adjust the height as needed
                
                // Top left corner: App Name "GOSI"
                HStack {
                    Text("GOSI")
                        .font(.system(size: 18))
                        .foregroundColor(Color(hex: 0x9BA0AA)) // Use the Color extension to create grey color
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 190, height: 115)
                    .foregroundColor(Color(hex: 0x00AE9A))
                    .padding(.top, 0)
                    .overlay(
                        ZStack(alignment: .topLeading) {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("4 days left")
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .offset(x: -22, y: -6) // Adjust x and y coordinates as needed
                                
                                Text("Upcoming Pension")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16))
                                    .offset(x: -16, y: 12) // Adjust x and y coordinates as needed
                                
                                Text("29th February")
                                    .foregroundColor(.white)
                                    .bold() // Make the text bold
                                    .offset(x: -16, y: 5)
                                    .font(.system(size: 20))
                            }
                            .background(Color.clear)
                            
                            // White Container with Green Calendar Icon
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .frame(width: 35, height: 35)
                                .offset(x: 120, y: -2) // Adjust x and y coordinates to position the container in the top right corner
                            
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(hex: 0x00AE9A)) // Green color
                                .offset(x: 127, y:5) // Adjust x and y coordinates to position the icon in the top right corner
                        }
                    )
                NavigationLink(destination: ContentView()) {

                    HStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 80, height: 70)
                            .offset(x: 0, y: -20)
                            .foregroundColor(Color(hex: 0xD94747)) // Red color
                            .padding(.top, 0)
                            .overlay(
                                ZStack(alignment: .center) {
                                    VStack {
                                        Image(systemName: "bell")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.white)
                                            .offset(x: 0, y: -18)
                                        Text("!")
                                            .font(.system(size: 24))
                                            .foregroundColor(.white)
                                            .offset(x: 0, y: -55)
                                    }
                                    
                                    VStack {
                                        Text("SOS")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                                    .padding(.top, 0) // Adjust the spacing between the bell icon and "SOS"
                                }
                            )}
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 80, height: 70)
                        .foregroundColor(.white)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 70)
                                .overlay(
                                    Image(uiImage: UIImage(contentsOfFile: "/Users/ahmedkashif/Desktop/ER_App/taqdeer.jpg")!) // assuming "taqdeer" is in your Assets.xcassets
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .onTapGesture {
                                            isTaqdeerImageTapped.toggle()
                                        }
                                )
                        )
                        .offset(x: 0, y: -20)
                        .padding(.vertical)
                        .padding()
                    
                }
            }
            
            // Notification View
            if isTaqdeerImageTapped {
                            Color.black.opacity(0.5)
                                .edgesIgnoringSafeArea(.all)
                                .onTapGesture {
                                    isTaqdeerImageTapped.toggle()
                                }
                            
                            VStack {
                                Spacer()
                                Image(uiImage: UIImage(contentsOfFile: "/Users/ahmedkashif/Desktop/ER_App/ER_App Watch App/Assets.xcassets/id.jpeg")!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 120)
                                    .padding()
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                Spacer()
                            }
                            .padding(.horizontal)
                            .edgesIgnoringSafeArea(.all)
                        }
                    }
                }
            }

