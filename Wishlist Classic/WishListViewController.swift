//
//  WishListViewController.swift
//  Wishlist Classic
//
//  Created by Lupyana Mbembati on 30/01/2020.
//  Copyright © 2020 Lupyana Mbembati. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var chosenWish: Wish?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Your Title"
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(image: UIImage.init(systemName: "bell"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(addWishButtonClicked))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = wishes[indexPath.row].item
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenWish = wishes[indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destination  = segue.destination as! WishDetailViewController
            destination.selectedWish = chosenWish
        }
    }
    
    @objc func addWishButtonClicked() {
        performSegue(withIdentifier: "toAddWishVC", sender: self)
    }
    
    
    
}
