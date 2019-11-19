//
//  TableCellTableViewCell.swift
//  PhoneBook
//
//  Created by Stanislav on 12.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit

class TableCellTableViewCell: UITableViewCell {

    @IBOutlet weak var namecont: UILabel!
    @IBOutlet weak var surnamecont: UILabel!
    @IBOutlet weak var numbercont: UILabel!
    
    func set(name: String, surname: String?, number: String?) {
        namecont.text = name
        surnamecont.text = surname
        numbercont.text = number
    }
    
}
