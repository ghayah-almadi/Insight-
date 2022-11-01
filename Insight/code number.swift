//
//  Created by Arwamohammed07 on 06/04/1444 AH.
//


import SwiftUI

struct code_number: View {
@State var phonenumber = ""

var body: some View {
    ZStack{
        LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
        startPoint: .topLeading, endPoint: .bottomLeading) .edgesIgnoringSafeArea(.all)
               
               VStack {
                   Text("Enter the code")
                       .font(.largeTitle)
                       .foregroundColor(.white)
                   Text("We sent the code to +0567891234")
                       .font(.footnote)
                       .foregroundColor(.white)
       
                   Image(systemName: "person.fill.badge.plus")
                       .resizable()
                       .padding(.bottom, 50.0)
                       .padding(.vertical, 50.0)
                       .frame(width: 150,height: 300)
                       .foregroundColor(Color("B"))
                       .padding(.bottom, 300)
               }
               VStack{
                   HStack{
                       
                       TextField("_", text: $phonenumber)
                       .padding(.trailing, 200.0)
                       .font(.headline)
                       .foregroundColor(.white)
                       .frame(width: 60, height: 60)
                       .background(Color("B"))
                       .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))

                                              TextField("_", text: $phonenumber)
                                                  .padding(.trailing, 200.0)
                                                  .font(.headline)
                                                  .foregroundColor(.white)
                                                  .frame(width: 60, height: 60)
                                                  .background(Color("B"))
                                                  .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                              TextField("_", text: $phonenumber)
                                                  .padding(.trailing, 200.0)
                                                  .font(.headline)
                                                  .foregroundColor(.white)
                                                  .frame(width: 60, height: 60)
                                                  .background(Color("B"))
                                                  .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                              
                                              TextField("_", text: $phonenumber)
                                                  .padding(.trailing, 200.0)
                                                  .font(.headline)
                                                  .foregroundColor(.white)
                                                  .frame(width: 60, height: 60)
                                                  .background(Color("B"))
                                                  .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                          }
                                          HStack{
                                              Text("Resend the code in")
                                                  .foregroundColor(Color.white)
                                                  .multilineTextAlignment(.center)
                                              Text("15 seconds")
                                                  .foregroundColor(Color("B"))
                                                  .bold()
                                                  .multilineTextAlignment(.center)
                                          }
                                          Button("Next"){
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
                                      //.padding()
                                      .padding(.bottom, -80)
                                  }
                              }
                              
                                      }
                       struct code_number_Previews: PreviewProvider {
                       static var previews: some View {
                       code_number()
                       }
                       }
