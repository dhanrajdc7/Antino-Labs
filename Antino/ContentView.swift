//
//  ContentView.swift
//  Antino
//
//  Created by Dhanraj Sudhir Chavan on 18/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import SwiftUI
import UIKit
import ImageWithActivityIndicator

struct ContentView: View {
    
    @ObservedObject var fetcher = PeopleFetcher()
    
    
    var body: some View {
        NavigationView {
            List(fetcher.peoples) { person in
                HStack {

                    CircularImage(loader: ViewLoader(url : person.imgUrl))
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(person.name)
                            .font(.title)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Text(person.age)
                                .font(.subheadline)
                                .foregroundColor(.blue)
                            
                            Text(person.location)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }.padding(4)
                }.padding(5)
            }
            .navigationBarTitle("Antino Labs")
        }
    }
    
    
}

extension UIImageView {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
