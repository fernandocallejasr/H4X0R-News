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
        HStack {
            Circle()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 40)
                .foregroundColor(.init(red: 1.00, green: 0.43, blue: 0.41))
                .overlay(Text("\(id)"))
            Capsule()
                .frame(width: 300, height: 40)
                .foregroundColor(.init(red: 1.00, green: 0.43, blue: 0.41))
                .overlay(Text(title).lineLimit(5))
            }
        .lineLimit(5)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(title: "The latest news", id: 100)
            .previewLayout(.sizeThatFits)
    }
}
