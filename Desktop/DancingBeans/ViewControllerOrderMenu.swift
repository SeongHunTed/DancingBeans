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
    var menuNameArray = ["Sorry :(", "Americano", "Latte"]
    
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
        
        
        if button.tag == 1 {
            
            nextViewController.menuName = menuNameArray[1]
            nextViewController.menuImage = UIImage(named: menuNameArray[1])
            //        nextViewController.menuImageView = UIImageView(image: UIImage(named: "americano"))
            //        nextViewController.menuImageView.image = imageAmericano
            
        } else if button.tag == 2 {
                
            nextViewController.menuName = menuNameArray[2]
            nextViewController.menuImage = UIImage(named: menuNameArray[2])

        } else { //  Occurred Error
            
            print("Sorry :()")
            nextViewController.menuName = menuNameArray[0]
            nextViewController.menuImage = UIImage(named: menuNameArray[0])
        }
        
        

    }
    
    
}
