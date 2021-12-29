//
//  ViewController.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import UIKit

class ViewControllerStart: UIViewController {
    
    @IBOutlet var playOrderButton: UIButton!
    @IBOutlet var playLatteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpPlayOrderAmeicanoButton(_ sender: UIButton){
        print("Americano button tapped")
    }
    
    @IBAction func touchUpPlayOrderLatteButton(_ sender: UIButton){
        print("Latte button tapped")
    }


}

