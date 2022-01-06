//
//  ViewControllerSecond.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/04.
//

import UIKit

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var imageViewTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageViewTest.image = UIImage(named: "americano")
    }
    

    
//    override func viewWillAppear(_ animated: Bool) {
//
//        super.viewWillAppear(animated)
//
//        self.textLabel.text = self.textToSet
//    }
//
    
    
    
    
}
