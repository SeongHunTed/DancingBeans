//
//  ViewControllerAmericano.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import UIKit


class ViewControllerAmericano: UIViewController {
    
    //override func viewDidLoad() {
        //super.viewDidLoad()
        // Do any additional setup after loading the view.
    //}
    
    @IBAction func pushOrderAmericano(_ sender: UIButton) {
        
        print("Americano Ordered")
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
