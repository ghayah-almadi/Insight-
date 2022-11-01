//
//  like.swift
//  Insight
//
//  Created by Ghayah Almadi on 02/11/2022.
//

import SwiftUI

struct Like: View {
    
    @State private var isliked = false
    var body: some View{
        VStack{
            LikeB(isLiked: $isliked)
        }
    }
}
        
        struct LikeB: View {
            @Binding var isLiked: Bool
            
            var body: some View{
                Button(action: {
                    self.isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:30)
                        .foregroundColor(isLiked ? .red : .gray)
                    
                })
            }
        }
    
struct Like_Previews: PreviewProvider {
    static var previews: some View {
        Like()
    }
}


