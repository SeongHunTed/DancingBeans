//
//  ViewControllerFirst.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/04.
//

import UIKit

class ViewControllerFirst: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        
        guard let nextViewController: ViewControllerSecond =
                segue.destination as? ViewControllerSecond else {
                    return
                }
        
        guard let button: UIButton = sender as? UIButton else {
            return
        }
    }
    
        

}
