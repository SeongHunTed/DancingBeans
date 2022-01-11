//
//  ViewControllerOrderMenu.swift
//  
//
//  Created by JAEHYEON on 2022/01/05.
//

import UIKit


class ViewControllerOrderMenu: UIViewController {
 
    @IBOutlet weak var menuButton: UIButton!
    
//    var menuImageArray = [UIImage(named: "error"),UIImage(named: "IceAmericano"), UIImage(named: "IceLatte")]
//    var menuNameArray = ["Sorry :(", "Americano", "Latte"]
    
    var menuButtonName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
        

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        guard let nextViewController: ViewControllerSecondMenu =
                segue.destination as? ViewControllerSecondMenu else {
                    return
                }
        
        guard let button: UIButton = sender as? UIButton else {
            return
            
        }
        

        switch (button.titleLabel?.text!) {
            
        case "Americano" :
            
            nextViewController.menuName = "Americano"
            nextViewController.menuImage = UIImage(named: "Americano")
            
        case "Latte" :
            
            nextViewController.menuName = "Latte"
            nextViewController.menuImage = UIImage(named: "Latte")
            
        default :
            
            nextViewController.menuName = "Sorry :("
            nextViewController.menuImage = UIImage(named: "Sorry :(")
        }
    }
}
