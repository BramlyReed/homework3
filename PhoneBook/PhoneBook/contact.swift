//
//  contact.swift
//  PhoneBook
//
//  Created by Stanislav on 12.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit
class Contact {
    
    static var shared = [Contact]()
    var id: String
    var name: String
    var surname: String?
    var number: String?
    
    init(id: String, data: JSON) {
        self.id = id
        self.name = data["name"] as! String
        self.surname = data["surname"] as? String
        self.number = data["number"] as? String
    }
  

}
