//
//  WelcomeViewController.swift
//  H.W 2.3
//
//  Created by Ирина on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var login: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        guard let login = self.login  else { return }
        nameLabel.text = "\(String(describing: login))"
    }
    
    @IBAction func logOutAction() {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }  
    
}
    

  


