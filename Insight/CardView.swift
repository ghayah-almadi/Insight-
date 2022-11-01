//
//  CardView.swift
//  Insight
//
//  Created by Ghayah Almadi on 02/11/2022.
//

import SwiftUI

struct CardView: View {
    
    
    @State private var isliked = false


    @State var card : CardInfo =  CardInfo(title: "Welcom to Insight", imageName: "L", about:"hiii" )
    var body: some View {
    
                      
                       
        VStack(alignment: .leading)
        {
            RoundedRectangle (cornerRadius: 30)
                .fill(.clear)
            
                
                .frame(width: 310, height:600)
                .overlay{
                    VStack(alignment: .center) {
                        
                        Image(card.imageName)
                            .resizable()
                            .frame(width:300 , height: 300)
                            .cornerRadius(30)
//                            .padding(.top, -150)
                        
                       
                            Text(card.title)
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .frame(width: 250)
                            
                        
                            Text(card.about)
                            .font(.system(size: 30))
                                .foregroundColor(.white)
                                .frame(width: 250)
                            
                        HStack{
                            
                            NavigationLink(destination: Comments(), label: {
                 Image(systemName: "bubble.left.fill")
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:30)

                 
             })
                            LikeB(isLiked: $isliked)
                            }
                        
                       
                       

                    }
                   
                }
        }

    }
}





struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
