//
//  PersonFetcher.swift
//  Antino
//
//  Created by Dhanraj Sudhir Chavan on 18/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import Foundation

public class PeopleFetcher: ObservableObject {
    @Published var peoples = [Person]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "http://demo8716682.mockable.io/cardData")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Person].self, from: d)
                    DispatchQueue.main.async {
                        self.peoples = decodedLists
                        print(self.peoples)
                    }
                }else {
                    print("No Data")
                }
            } catch let err {
                print(err)
            }
            
        }.resume()
         
    }

}
