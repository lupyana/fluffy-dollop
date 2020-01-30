//
//  ViewController.swift
//  Wishlist Classic
//
//  Created by Lupyana Mbembati on 30/01/2020.
//  Copyright © 2020 Lupyana Mbembati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func continueButtonPressed(_ sender: Any) {
        if (nameTextField.text! == ""){
            self.makeAlert(alertTitle: "Error", alertMessage: "Name field can't be empty")
        }else {
             performSegue(withIdentifier: "toWishListVc", sender: self)
        }
       
    }
    
    func makeAlert(alertTitle: String, alertMessage: String) {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton  = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

