//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Vallamkonda, Sunaina on 2019-11-18.
//  Copyright © 2019 Vallamkonda, Sunaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var enteredMessageField: UITextField!
    @IBOutlet weak var displayedText: UILabel!
    
    //MARK: Initializers
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Analyze text provided
    @IBAction func analyzeText(_ sender: Any) {
        
        //Guard against no input
        guard let enteredMessage = enteredMessageField.text, enteredMessage.count > 0  else {
            displayedText.text = "Please enter a phrase to analyze."
            return
        }
        
    }
    
}

