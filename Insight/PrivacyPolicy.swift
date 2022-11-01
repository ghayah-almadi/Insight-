//
//  PrivacyPolicy.swift
//  TabView
//
//  Created by Ghayah Almadi on 01/11/2022.
//

import SwiftUI

struct PrivacyPolicy: View {
var body: some View {

    ZStack (alignment: .top){
        LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                       startPoint: .topLeading, endPoint: .bottomLeading
        )
        .edgesIgnoringSafeArea(.all)
        
        VStack {
            Text(" ")
            Text("privacy policy")
                .font(.largeTitle)
                .padding(.top, 100.0)
                .colorInvert()
//Spacer()
Text ("Welcome to the insight Platform The Platform is provided and controlled by insight Pte. Ltd., with its registered address We are committed to protecting and respecting your privacy. This policy explains our practices concerning the personal data we collect from you, or that you provide to us. If you do not agree with this policy, you should not use the Platform.")
.foregroundColor(Color.white)
.font(.title)
.multilineTextAlignment(.center)
.padding(.all)
Spacer()
}
}
}

struct PrivacyPolicy_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicy()
    }
}
}
