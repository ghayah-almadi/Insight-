//
//  CardInfo.swift
//  Insight
//
//  Created by Ghayah Almadi on 02/11/2022.
//

import Foundation


struct CardInfo  : Identifiable{
    var title : String
    var id = UUID()
    var imageName : String
    var about : String
}
