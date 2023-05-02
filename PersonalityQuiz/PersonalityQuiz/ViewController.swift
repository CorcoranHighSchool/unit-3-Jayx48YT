//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by David Armando Parra on 4/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "beginPersonalityQuiz", sender: nil)
    }
    
    @IBAction func unwindToQuizIntoduction(segue: UIStoryboardSegue) {
        
    }
    
}

 
