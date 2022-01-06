//
//  ViewControllerOrderMenu.swift
//  
//
//  Created by JAEHYEON on 2022/01/05.
//

import UIKit


class ViewControllerOrderMenu: UIViewController {
 
    @IBOutlet weak var menuButton: UIButton!
    
    var menuImageArray = [UIImage(named: "error"),UIImage(named: "IceAmericano"), UIImage(named: "IceLatte")]
    var menuNameArray = ["error", "IceAmericano", "IceLatte"]
    
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
        
            
        
        
        if menuButton?.currentTitle == "Americano" {
            print("yes")
            nextViewController.menuName = menuNameArray[1]
            nextViewController.menuImage = menuImageArray[1]
            //        nextViewController.menuImageView = UIImageView(image: UIImage(named: "americano"))
            //        nextViewController.menuImageView.image = imageAmericano

        } else {
            print(button.currentTitle)
            print(menuButton?.currentTitle, "doesnt work")
            
            if menuButton?.currentTitle == nil {
                nextViewController.menuName = menuNameArray[0]
                nextViewController.menuImage = menuImageArray[0]
            }
        }
        
        
    }
    
    
}