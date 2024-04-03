import SwiftUI

struct LocationSharingView: View {
    let customGreen = Color(red: 0 / 255, green: 174 / 255, blue: 154 / 255)
    @State private var timeRemaining = 59 // assuming a countdown from 59 minutes
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            
            // Text blocks
            Group {
                Text("You started sharing")
                Text("your location with")
                Text("your contacts")
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment:.center)
            
            
            NavigationLink(destination: Locationview()) {
                Text("Stop sharing")
                    .foregroundColor(customGreen)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(customGreen, lineWidth: 2)
                    )
            }
            .padding(.horizontal)
            
            // Timer text
            Text("\(timeRemaining) minutes remaining")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
