//
//  EmergencyView.swift
//  mynewapp Watch App
//
//  Created by Danah  on 02/04/2024.
//

import SwiftUI

struct EmergencyView: View {
    @State private var callStatus = "Calling..."
    var body: some View {
        
        VStack {
            Image(systemName: "bell.fill")
                .foregroundColor(.white)
                .font(.system(size: 55))

            Text("911")
                .font(.largeTitle)
            Text(callStatus)
                .foregroundColor(Color(hex: "#D94747"))
                .padding(.bottom, 24.0)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                        self.callStatus = "01:32"
                    }
                }
            Button(action: {
                // Add your hangup action here
            })
            {
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 176, height: 36) // Adjust width and height of the rectangle
                        .foregroundColor(Color(hex: "#D94747")) // Color of the rectangle
                    
                    Image(systemName: "phone.down.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                }
            }
            
        }
    }
}

struct EmergencyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyView()
    }
}
