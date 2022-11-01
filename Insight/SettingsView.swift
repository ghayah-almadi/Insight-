//
// ContentView.swift
// sitting
//
// Created by maha mdhebri on 01/04/1444 AH.
//

import SwiftUI

struct SettingsView: View {
    
    //    var body: some View
    @State private var bell = false
    var body: some View {
        NavigationView {
            ZStack (alignment: .top)
            {
                LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                               startPoint: .topLeading, endPoint: .bottomLeading
                )
                .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    Text("Sittings")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 24)
                        .padding()


                        
                    
                    ZStack {
                                                
                        Form  {
                            Section {
                                HStack{
                                    Image(systemName: "bell")
                                    Toggle(isOn: $bell) {
                                        HStack {
                                            Text("Notfication")}}}
                                HStack {
                                    Image(systemName: "shield")
                                    HStack {
                                        Text("Privacy policy")
                                        NavigationLink(destination:PrivacyPolicy()) {}
                                    }}
                                HStack {
                                    Image(systemName: "text.bubble")
                                    HStack {
                                        Text("About us")
                                        NavigationLink(destination:AboutUs()) {}} }
                                HStack {
                                    Image(systemName: "square.and.arrow.up")
                                    Text("Share")}
                            }
                            
                            .foregroundColor(Color("B 1"))
                            
                        }
                        
                    }
                    
                    .scrollContentBackground(.hidden)
                    
                }
                
            }
        }
    }
        struct SettingsView_Previews: PreviewProvider {
            static var previews: some View {
                SettingsView()
            }
            
        }
        
        
    }

