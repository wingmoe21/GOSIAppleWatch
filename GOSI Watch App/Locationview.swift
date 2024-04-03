import SwiftUI

struct Locationview: View {
    let customGreen = Color(red: 0 / 255, green: 174 / 255, blue: 154 / 255)
    var body: some View {
        
        Text("Share live location").font(.headline)

        List {
            NavigationLink(destination: LocationSharingView()) {
                
                Button(action: {
                    // Code to share location for 1 hour
                }) {
                    Text("Share for 1 Hour")
                        .foregroundColor(customGreen)
                }
                .listRowBackground(Color.clear)
            }.listRowBackground(Color.clear)

            
            Button(action: {
                // Code to share location until end of day
            }) {
                Text("Share until end of day")
                    .foregroundColor(customGreen)
            }
            .listRowBackground(Color.clear)
            
            Button(action: {
                // Code to share location indefinitely
            }) {
                Text("Share indefinitely")
                    .foregroundColor(customGreen)
            }
            .listRowBackground(Color.clear)
        }
        .listStyle(CarouselListStyle())
    }
}


