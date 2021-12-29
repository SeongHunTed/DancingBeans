//
//  ViewController.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import UIKit

class ViewControllerStart: UIViewController {
    
    @IBAction func pushOrderButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToOrder", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

