//
//  B.swift
//  TabView
//
//  Created by Ghayah Almadi on 30/10/2022.
//

import SwiftUI

struct Comments: View {

@State var text = ""
@State var text1 = ""
var body: some View {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                       startPoint: .topLeading, endPoint: .bottomLeading)                    .edgesIgnoringSafeArea(.all)
    
        
        VStack(alignment: .leading) {
            
            
//            Image(systemName: "chevron.backward").font(.largeTitle).padding([.top, .leading], -6.0)
////Spacer()
//.foregroundColor(.white)
//.font(.system(size: 45))
//.fontWeight(.bold)
//.padding()
VStack{
Image("1im")
.resizable()
.frame(width: 400 , height: 300)
.padding(.trailing, -25.0)
//.cornerRadius(30)
.clipShape(
RoundedRectangle(cornerRadius: 30)

                    )
                    .edgesIgnoringSafeArea(.all)

            }
            
            HStack {
                Text("about...")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
//                Image(systemName: "heart.fill")
//                    .foregroundColor(.white)
//                    .font(.title2)
                   
            }
            .padding()
            Text("what more can I tell you? I painted this in a moment of loss, of pain.. I wish to feel in color again.")

                .foregroundColor(.gray)
                .font(.system(size: 20))
                .padding()
            HStack{
                Image(systemName: "person")
                    .foregroundColor(.white)
                TextField("comment", text :$text)
                    .foregroundColor(.white)
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color.gray.opacity(0.08 ))
            .cornerRadius(13)
            
        HStack{
            Image(systemName: "person")
                .foregroundColor(.white)
            TextField("add comment", text :$text1)
                .foregroundColor(.white)
            Button("post") {
                
                
            }
        
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 50, height: 30)
            .background(Color("Color1"))
            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
        
         
         
        }
            .padding(.vertical,12)
            .padding(.horizontal)
            .background(Color.gray.opacity(0.08 ))
            .cornerRadius(13)
            
         
            
        }
        .padding()
        
        
        
    }
          
            
            
          
            
          
                       
            
            
        }
        
      
       
       
    }
struct Comments_Previews: PreviewProvider {
    static var previews: some View {
        Comments()
    }
}
