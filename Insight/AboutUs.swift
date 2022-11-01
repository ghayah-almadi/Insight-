//
//  AboutUs.swift
//  TabView
//
//  Created by Ghayah Almadi on 01/11/2022.
//

import SwiftUI
struct AboutUs: View {
var body: some View {
ZStack (alignment: .top){
LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
startPoint: .topLeading, endPoint: .bottomLeading
)
.edgesIgnoringSafeArea(.all)
VStack {
Text("")
Text("About Us").font(.largeTitle)
.padding(.top, 100.0)
.colorInvert()

            Text("Here is a place to declutter a place to share your thoughts, to express your feelings, and to see others like you..")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .padding(.all)
            Spacer()
        }
    }
    }
    
    struct AboutUs_Previews: PreviewProvider {
        static var previews: some View {
            AboutUs()
        }
    }
}
