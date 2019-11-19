//
//  AddContVC.swift
//  PhoneBook
//
//  Created by Stanislav on 12.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit

class AddContVC: UIViewController {

    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var surnamefield: UITextField!
    
    @IBOutlet weak var numberfield: UITextField!
    
    @IBOutlet weak var loadindicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func savingcont(_ sender: Any) {
        //принимаются только 11 цифр для ввода
        if (namefield.text != "" && surnamefield.text != "" && numberfield.text?.count == 11){
        
            self.loadindicator.startAnimating()
            DispatchQueue.global().async{
                API.createContact(
                    name: self.namefield.text,
                    surname: self.surnamefield.text,
                    number: self.numberfield.text!)
                {result in
                    guard result else {return}
                }
                DispatchQueue.main.async{
                    self.loadindicator.stopAnimating()
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
    }
}
