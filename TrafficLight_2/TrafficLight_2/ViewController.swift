//
//  ViewController.swift
//  TrafficLight_2
//
//  Created by David Armando Parra on 3/7/23.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
        performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
        performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}
