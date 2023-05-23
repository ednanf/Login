//
//  ViewController.swift
//  Login
//
//  Created by Ednan R. Frizzera Filho on 23/05/23.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IBOutlets
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!

// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }                          // First we unwrap the sender parameter (which is an optional).
                                                                                        // We also cast it as UIButton (which in this case always succeeds).
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"                  // The ForgotUsernameOrPassword segue is triggered by the performSegue,
        } else if sender == forgotUsernameButton {                                      // which we passed in the corresponding button as a sender.
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameField.text                 // The login segue is specifically triggered by a button.
        }
        
    }
    
// MARK: - IBAction
    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)     // The sender is the button that was tapped.
    }
    
    @IBAction func forgorPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
}

