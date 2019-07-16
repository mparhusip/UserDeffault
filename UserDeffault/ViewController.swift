//
//  ViewController.swift
//  UserDeffault
//
//  Created by Marilyn Martha Yusnita Devi Parhusip on 05/07/19.
//  Copyright © 2019 Apple Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var dataLabel: UILabel!
    let userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataLabel.text = userDef.string(forKey: "word")
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        
        userDef.set(wordTextField.text, forKey: "word")
        // datalabel.text = wordTextField.text
        dataLabel.text = userDef.string(forKey: "word")
        
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true))
    }
    
}

