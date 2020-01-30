//
//  NewWishViewController.swift
//  Wishlist Classic
//
//  Created by Lupyana Mbembati on 30/01/2020.
//  Copyright © 2020 Lupyana Mbembati. All rights reserved.
//

import UIKit

class NewWishViewController: UIViewController {
    
    @IBOutlet weak var wishItem: UITextField!
    @IBOutlet weak var wishDescription: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        if wishItem?.text == "" {
            self.makeAlert(alertTitle: "Error!", alertMessage: "Please provide a name for the item")
        } else {
            let newWish = Wish(item: wishItem?.text ?? "", wishDescription: wishDescription.text!)
            wishes.append(newWish)
            print(wishes)
            dismiss(animated: true, completion: nil)
            
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
