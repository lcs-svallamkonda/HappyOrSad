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
        
        //Clear out the output label from the last time the Analyze button was pressed
        displayedText.text = ""
        
        //Guard against no input
        guard let enteredMessage = enteredMessageField.text, enteredMessage.count > 0  else {
            displayedText.text = "Please enter a phrase at least 1 and no more than 255 characters."
            return
        }
        
        //Make sure input is not too long
        guard enteredMessage.count <= 255 else {
            displayedText.text = "Please enter a phrase at least 1 and no more than 255 characters."
            return
        }
        
        //create constants to count happy and sad emojis
        var happyCount = 0
        var sadCount = 0
        
        //iterate over every character in message
        for singleCharacter in enteredMessage {
            
            //find the emojis in the message
            switch singleCharacter{
            case "😃", "😊", "🙂", "😄" :
                happyCount += 1
            case  "☹", "🙁", "😕", "😔" :
                sadCount += 1
            default: print("")
            }
        }
        
        //Make label project results
        if happyCount > sadCount {
            displayedText.text = "happy"
        } else if happyCount < sadCount {
            displayedText.text = "sad"
        } else if happyCount > 0 || sadCount > 0 {
            displayedText.text = "unsure"
        } else {
            displayedText.text = "none"
        }
        
    }
    
}



