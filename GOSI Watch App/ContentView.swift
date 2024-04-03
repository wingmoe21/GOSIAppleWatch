//
//  ContentView.swift
//  mynewapp Watch App
//
//  Created by Danah  on 01/04/2024.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            List {
                NavigationLink(destination: EmergencyView()) {
                    HStack {
                        
                        ZStack{
                            Circle()
                                .foregroundColor(.red)
                                .frame(width: 30, height: 30)
                            Text("sos").foregroundColor(.white)
                        }
                        Text("Tab To Call").padding()
                    }
                    
                    
                }
                NavigationLink(destination: NotifyFamilyView()) {
                    
                    HStack {
                        ZStack{
                            Circle()
                                .foregroundColor(.green)
                                .frame(width: 30, height: 30)
                            Image(systemName: "bell")
                        }
                        Text("Notify Family").padding()
                    }
                }
                NavigationLink(destination: Locationview()) {
                    
                    HStack {
                        ZStack{
                            Circle()
                                .foregroundColor(.yellow)
                                .frame(width: 30, height: 30)
                            Image(systemName: "location.fill")
                        }
                        Text("Share Live Location").padding()
                    }
                }
                
                
                
                
                
                Link("Call Emergency", destination: URL(string: "tel:911")!)
                    .foregroundColor(.white)
                    .padding()
            }
            .navigationTitle("Menu")
        }
        
        
        
    }
}

