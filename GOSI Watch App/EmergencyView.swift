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
        
        VStack{
            Image(systemName: "bell.fill")
                .foregroundColor(.white)
                .font(.system(size: 55))
                .padding()
            Text("911")
                .font(.largeTitle)
            Text(callStatus)
                .foregroundColor(Color.red)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                        self.callStatus = "01:32"
                    }
                    
                   
                }
            
            
            Button(action: {
                // Add your hangup action here
            }) {
                
                Image(systemName: "phone.down.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .padding()
                
                
                
            }.background(Color.red)
            
        }
    }
}


#Preview {
    EmergencyView()
}
