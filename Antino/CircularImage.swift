//
//  CircularImage.swift
//  Antino
//
//  Created by Dhanraj Sudhir Chavan on 18/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import SwiftUI
import ImageWithActivityIndicator

struct CircularImage: View {
    
    var loader : ViewLoader 
    
    var body: some View {
        ViewWithActivityIndicator(placeHolder: "", showActivityIndicator: true, viewLoader: self.loader) {
            Image(uiImage: (UIImage(data: self.loader.getData()) ?? UIImage(named: "new"))!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(color: .gray, radius: 2, x: 1, y: 1)
                .padding(.trailing, 5)
        }
    }
    
}

