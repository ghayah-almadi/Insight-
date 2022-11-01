//
//  ContentView.swift
//  home
//
//  Created by Ghayah Almadi on 26/10/2022.
//


import SwiftUI
import SnapToScroll

struct Home: View {

    
    @State var arrayofCards = [
                               CardInfo(title: "Welcom to Insight"
                                        , imageName: "L", about: "Swipe to explore"),
                               CardInfo(title: ""
                                        , imageName: "H", about: "I made this in a moment of loss..."),
                               CardInfo(title: "I wish that I can feel in color again."
                                        , imageName: "I", about: ""),
                               CardInfo(title: "what more can I tell you?"
                                        , imageName: "J", about: ""),
                               CardInfo(title: "where does it end?"
                                        , imageName: "K", about: "")
                            
    ]
    var body: some View {
        
        ZStack (alignment: .top){
            LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                           startPoint: .topLeading, endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
            
            
            
            VStack(alignment: .leading) {
                Text ("Explore")
                    .foregroundColor(.white)
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .padding()

                
                
                
                HStackSnap(alignment: .center(32)) {
                    ForEach(arrayofCards) { card in
                        CardView(card: card)
                            .snapAlignmentHelper(id: card.id)
                           
                        
                    }
                    
                    
                }
                
                .ignoresSafeArea(.all)
      
            }
            
        }

    }
    
    
}
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }

