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
        
        ZStack {
            
            //Color(red: 0.84, green: 0.68, blue: 0.62).edgesIgnoringSafeArea(.all)
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}
