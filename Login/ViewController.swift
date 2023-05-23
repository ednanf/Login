//
//  ViewController.swift
//  Login
//
//  Created by Ednan R. Frizzera Filho on 23/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameField.text
    }
}

