//
//  ViewController.swift
//  exercise01
//
//  Created by work on 03/12/20.
//

import UIKit

class ViewController: UIViewController {

    var wordToLookup = "👻"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showMessage(sender: UIButton) {
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            let alertController = UIAlertController(title: "Welcome to My First App", message: "\(wordToLookup)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
}

