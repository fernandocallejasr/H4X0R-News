//
//  PostData.swift
//  H4X0R News
//
//  Created by user177767 on 8/13/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let title: String
    let url: String?
    let points: Int
    let objectID: String
    
}
