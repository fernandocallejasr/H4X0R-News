//
//  MessageCell.swift
//  H4X0R News
//
//  Created by user177767 on 8/15/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import SwiftUI

struct NewsCell: View {
    
    let title: String
    let id: Int
    
    var body: some View {
        
        ZStack {
                        
            HStack {
                Circle()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 40)
                    .foregroundColor(.init(red: 0.97, green: 0.91, blue: 0.89))
                    .overlay(Text("\(id)")
                        .foregroundColor(Color.black))
                Capsule()
                    .frame(width: 300, height: 85.0)
                    .foregroundColor(.init(red: 0.97, green: 0.91, blue: 0.89))
                    .overlay(Text(title).foregroundColor(Color.black).multilineTextAlignment(.center).lineLimit(5).padding(.horizontal))
                    .cornerRadius(25.0)
                
            }
            .lineLimit(5)
            
        }
        
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(title: "The latest news", id: 100)
            .previewLayout(.sizeThatFits)
    }
}
