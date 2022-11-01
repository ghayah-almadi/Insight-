//
//  Created by Arwamohammed07 on 06/04/1444 AH.
//

import SwiftUI

struct sign_up: View {
@State var name = ""
@State var phonenumber = ""

var body: some View {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
        startPoint: .topLeading, endPoint: .bottomLeading) .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Welcome!")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Image(systemName: "person.fill.badge.plus")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .padding(.bottom, 50.0)
                        .padding(.vertical, 50.0)
                        .frame(width: 150,height: 300)
                        .foregroundColor(Color("B"))
                        .padding(.bottom, 300)
                        

                }
              
                    
                    VStack{
                        HStack{
                            Image(systemName: "person.fill.badge.plus")
TextField("Name", text: $name)
                                .padding(.trailing, 200.0)
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 310, height: 50)
                                .background(Color("G"))
                                .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        }
                        HStack{
            Image(systemName: "phone.fill")
                        TextField("Phone Number", text: $phonenumber)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 310, height: 50)
                            .background(Color("G"))
                            .keyboardType(.phonePad)
                            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                  }
                        HStack{
                            Text("We will send you the ")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            Text("4 digtal ")
                                .foregroundColor(Color("B"))
                                .bold()
                                .multilineTextAlignment(.center)
                            Text(" verification code")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Button("login"){
                        }
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color("B"))
                        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                    .frame(width: 380.0, height: 250.0)
                    .foregroundColor(.white)
                    .background(Color("G1"))
                    .cornerRadius(15)
// .padding()
.padding(.bottom, -80)

                }
// .frame(width: 400.0, height: 400.0)

            }
    
            
    }
struct sign_up_Previews: PreviewProvider {
static var previews: some View {
sign_up()
}
}
