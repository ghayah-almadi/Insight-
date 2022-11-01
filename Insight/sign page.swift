//
//  Created by Arwamohammed07 on 06/04/1444 AH.
//


import SwiftUI

struct sign_page: View {
var body: some View {
ZStack {
// Image("background")
LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
startPoint: .topLeading, endPoint: .bottomLeading) .edgesIgnoringSafeArea(.all)
VStack{
Image("L")
.resizable()
.aspectRatio( contentMode: .fit)
.padding(.bottom, 100.0)
.frame(width:300)
Text("Welcome to Insight!")
.font(.largeTitle)
.fontWeight(.ultraLight)
.foregroundColor(Color.gray)
.multilineTextAlignment(.center)

            Button("Sign Up"){
            }
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color("B"))
            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
            Button("Sign In"){
            }
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color("B"))
            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
        }
        .padding()
    }
}
struct sign_page_Previews: PreviewProvider {
static var previews: some View {
                sign_page()
            }
        }
    }
