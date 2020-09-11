//
//  ContentView.swift
//  H4X0R News
//
//  Created by user177767 on 8/13/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    NewsCell(title: post.title, id: post.points)
                    
                }
            })
                .navigationBarTitle("H4CK0R News")
            }
            .onAppear {
                self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}

/*
let postsArray = [
    Post(id: "1", title: "Apple kicks Fornite"),
    Post(id: "2", title: "Fornite makes parody of '1984'"),
    Post(id: "3", title: "Google kicks Fornite")
]
*/
