//
//  DetailView.swift
//  H4X0R News
//
//  Created by user177767 on 8/13/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
            .previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}

