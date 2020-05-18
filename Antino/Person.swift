//
//  Person.swift
//  Antino
//
//  Created by Dhanraj Sudhir Chavan on 18/05/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import Foundation


struct Person: Decodable, Identifiable {
    public var id = UUID()
    public var name : String
    public var imgUrl : String
    public var imgData = Data()
    public var age : String
    public var location : String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case imgUrl = "url"
        case age = "age"
        case location = "location"
    }
}
