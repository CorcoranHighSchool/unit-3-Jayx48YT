//
//  ViewController.swift
//  LifeCycle
//
//  Created by David Armando Parra on 3/21/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - View Did Load")
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print("ViewController - View Will Appear")
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print("ViewController - View Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        print("ViewController - View Did Appear")
    }
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        print("ViewController - View Did Appear")
    }
}

