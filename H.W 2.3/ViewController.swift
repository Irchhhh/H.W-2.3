//
//  ViewController.swift
//  H.W 2.3
//
//  Created by Ирина on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else { return }
        dvc.login = userName.text
    }
       
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    
    @IBAction func logInButton() {
        performSegue(withIdentifier: "oneSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
        guard segue.identifier == "unwindSegue" else { return }
    }

    @IBAction func forgotUsName() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func forgotPass() {
        showAlert(title: "Oops!", message: "Your name is Password 😉")
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            print("Ok")
        }))
        present(alert, animated: true)
        
    }
    
}



