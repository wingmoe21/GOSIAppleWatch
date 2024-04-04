//
//  NotifyFamilyView.swift
//  mynewapp Watch App
//
//  Created by Danah  on 02/04/2024.
//

import SwiftUI

struct NotifyFamilyView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Text("Your notification has been sent to your emergency contacts")
                .font(.body)
                .multilineTextAlignment(.center)
            
            
        }
               Spacer()
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Back To Home")
                            .font(.headline)
                            .padding()
                            .foregroundColor(Color(hex:"#00AE9A"))
                            .cornerRadius(10)
                    }
                  
                  
                
        
    } }

#Preview {
    NotifyFamilyView()
}
