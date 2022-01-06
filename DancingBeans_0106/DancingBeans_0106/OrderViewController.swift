//
//  OrderViewController.swift
//  DancingBeans_0106
//
//  Created by Hoon on 2022/01/06.
//

import UIKit

class OrderViewController: UIViewController{
    

    @IBOutlet weak var whatthefuck: UIButton!
    
    
    
    var menuImageArray =
    [ UIImage(named: "ameicano"),
      UIImage(named: "Vanilla"),
      UIImage(named: "Dancing"),
      UIImage(named: "Filter"),
      UIImage(named: "Latte"),
      UIImage(named: "Espresso")]
    
    var menuArray =
    [ "Americano", "Latte", "Vanilla Latte", "Dancing Latte", "Filter", "Flat White", "Espresso"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func returnBtnText(sender: UIButton)->String
//    {
//        return (sender.titleLabel?.text)!
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let nextViewController: OptionViewController = segue.destination as? OptionViewController else {
            return
        }

        guard let button: UIButton = sender as? UIButton else {
            return
        }

//        if (whatthefuck.titleLabel?.text)! == "Americano"
//        {
//            print("yes")
//            nextViewController.menuName = menuArray[0]
//            nextViewController.menuImage = menuImageArray[0]
//        } else {
//            print("fuck")
//        }
        
        switch (whatthefuck.titleLabel?.text)! {
        case "Americano":
            nextViewController.menuName = menuArray[0]
            nextViewController.menuImage = menuImageArray[0]
        case "Latte","Vanilla latte":
            nextViewController.menuName = menuArray[1]
            nextViewController.menuImage = menuImageArray[1]
        case "Dancing Latte":
            nextViewController.menuName = menuArray[2]
            nextViewController.menuImage = menuImageArray[2]
        case "Filter":
            nextViewController.menuName = menuArray[3]
            nextViewController.menuImage = menuImageArray[3]
        case "Flat White":
            nextViewController.menuName = menuArray[4]
            nextViewController.menuImage = menuImageArray[4]
        case "Espresso":
            nextViewController.menuName = menuArray[5]
            nextViewController.menuImage = menuImageArray[5]
        default:
            print("error")
        }
        
    }
    
    
    
}
