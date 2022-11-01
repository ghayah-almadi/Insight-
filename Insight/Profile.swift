//
//  ContentView.swift
//  profile
//
//  Created by Ghayah Almadi on 28/10/2022.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack (alignment: .top){
            LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                           startPoint: .topLeading, endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
            
            
            
            VStack(alignment: .leading) {
                HStack{
                    Text ("My thoughts")
                        .foregroundColor(.white)
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .padding(.leading, -20)
                        .padding(.top, 100)
                    
                        NavigationLink(destination: SettingsView(), label: {
                            Image(systemName: "gearshape.fill")
                                .padding(.top, 90)
                                .padding(.leading, 40)

                            
                                .font(.title)
                                .foregroundColor(.gray)
                           
                        }
                                       
                                       )}
                        
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .font(.system(size:50))
                                .foregroundColor(.white)
                                .padding(.leading, -20)
                            Text("@profile")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(.leading, -5)
                            
                            
                        }
                        VStack(alignment: .center){
//                            ScrollView(.vertical, showsIndicators: true, content:{
//                                VStack{
//                                    ForEach(0..<50){ index in
//                                        RoundedRectangle(cornerRadius: 30)
//                                            .fill(Color.gray)
//                                            .frame(width:300, height: 300)
//
//                                    }
//
//
//                                }
//                            }
//                            )
                            Image("K")
                                .resizable()
                                .frame(width: 330, height: 330)
                                .cornerRadius(30)
                            
                            Image("J")
                                .resizable()
                                .frame(width: 330, height: 330)
                                .cornerRadius(30)

                        }
                        
                        
                        
                    }
                    
                    
                }
                
            }
            
            
            
        }
            
            
            
            struct Profile_Previews: PreviewProvider {
                static var previews: some View {
                    Profile()
                }
            }
        
    
