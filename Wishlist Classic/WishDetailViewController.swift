//
//  WishDetailViewController.swift
//  Wishlist Classic
//
//  Created by Lupyana Mbembati on 30/01/2020.
//  Copyright © 2020 Lupyana Mbembati. All rights reserved.
//

import UIKit

class WishDetailViewController: UIViewController {

    @IBOutlet weak var wishItem: UILabel!
    @IBOutlet weak var wishDescription: UILabel!
    
    var selectedWish: Wish?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        wishItem.text = selectedWish?.item
        wishDescription.text = selectedWish?.wishDescription
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
