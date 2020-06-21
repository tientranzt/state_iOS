//
//  File.swift
//  todo_app
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation

struct Todo : Identifiable{
    var id =  UUID()
    var title : String
    var image : String
    init(title : String, image : String) {
        self.title = title
        self.image = image
    }
    
    static func randomImage() -> String {
        let ranNum : Int = Int.random(in: 1...8)
        return "account\(ranNum)"
    }
}


