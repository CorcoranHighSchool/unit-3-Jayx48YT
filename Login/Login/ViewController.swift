//
//  ViewController.swift
//  Login
//
//  Created by David Armando Parra on 2/27/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "Forgot"
        }
        else{
        segue.destination.navigationItem.title = username.text
        }
        
    }

    @IBAction func forgotUsername(_ sender: Any) {
        //perform segue code
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }

    //forgot password
    @IBAction func forgotPassword(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}

