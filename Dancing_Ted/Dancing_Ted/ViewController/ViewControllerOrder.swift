//
//  ViewControllerOrder.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import UIKit

class ViewControllerOrder: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func pushAmericano(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "pushDetailOrder", sender: self)
        
    }
    

}

