//
//  ViewController.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/21.
//

import UIKit

class MenuListViewController: UIViewController, SelectOptionDelegate {
    
    
    @IBOutlet weak private var productNameLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    @IBOutlet var menuChooseButton: [UIButton]!
    
    var indexOfOneAnyOnly: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func setUI() {
        navigationController?.navigationBar.isHidden = true
    }
    
    // (3) 프로토콜의 메서드를 구현한 부분
    func alarmCartIsFilled(itemCount: Int) {
        let alertVC = UIAlertController(title: "장바구니 확인", message: "장바구니에 \(itemCount)개의 상품이 추가되었습니다.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alertVC.addAction(okAction)
        
        present(alertVC, animated: true, completion: nil)
    }
    
    
    @IBAction func selectMenuButtonTapped(_ sender: UIButton) {
        
        let SelectOptionVC = storyboard?.instantiateViewController(identifier: "SelectOptionViewController") as! SelectOptionViewController
        
        SelectOptionVC.delegate = self // (2) SelectOptionVC의 권한은 내가 대신할거야
//
//        guard let productName = productNameLabel.text, let price = priceLabel.text else {
//            return
//        }
        let price: String = "0 원임"
        
        if indexOfOneAnyOnly != nil {
            if !sender.isSelected {
                for index in menuChooseButton.indices {
                    menuChooseButton[index].isSelected = false
                }
                sender.isSelected = true
                indexOfOneAnyOnly = menuChooseButton.firstIndex(of: sender)
            } else {
                sender.isSelected = false
                indexOfOneAnyOnly = nil
            }
        } else {
            sender.isSelected = true
            indexOfOneAnyOnly = menuChooseButton.firstIndex(of: sender)
        }
        
        for button in menuChooseButton {
            
            if button.isSelected == true {
                
                if button.titleLabel!.text! == "Americano" {
                    SelectOptionVC.productName = "Americano"
                    SelectOptionVC.productPrice = price

                    print(button.titleLabel!.text!)
                    print(SelectOptionVC.productName)

                    self.present(SelectOptionVC, animated: true, completion: nil)

                    return
                    
                } else if button.titleLabel!.text! == "Latte" {
                    SelectOptionVC.productName = "Latte"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return
                    
                } else if button.titleLabel!.text! == "Vanilla Latte" {
                    SelectOptionVC.productName = "Vanilla Latte"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return
                    
                } else if button.titleLabel!.text! == "Dancing Latte" {
                    SelectOptionVC.productName = "Dancing Latte"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return

                } else if button.titleLabel!.text! == "Ein Spanner" {
                    SelectOptionVC.productName = "Ein Spanner"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return

                } else if button.titleLabel!.text! == "Filter" {
                    SelectOptionVC.productName = "Filter"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return

                } else if button.titleLabel!.text! == "Espresso" {
                    SelectOptionVC.productName = "Espresso"
                    SelectOptionVC.productPrice = price
                    self.present(SelectOptionVC, animated: true, completion: nil)
                    return
                }
            }
            

        }
//            switch (button.titleLabel!.text!) {
//
//
//            case "Americano" :
//                //
//                SelectOptionVC.productName = "Americano"
//                SelectOptionVC.productPrice = price
//    //                print(menuChooseButton[i])
//                print(button.titleLabel!.text!)
//                print(SelectOptionVC.productName)
//
//    //            dump("menuChooseButton : \(menuChooseButton)")
//
//
//    //            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//    //             MenuListViewController > SelectOptionViewController 로 performSegue 를 통해 넘어가면서
//    //             위에서 지정한 delegate data 가 적용이 안되는듯
//
//                present(SelectOptionVC, animated: true, completion: nil)
//
//                return
//
//            case "Latte" :
//                SelectOptionVC.productName = "Latte"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//    //                present(SelectOptionVC, animated: true, completion: nil)
//                return
//
//            case "Vanilla Latte" :
//                SelectOptionVC.productName = "Vanilla Latte"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//                return
//
//            case "Dancing Latte" :
//                SelectOptionVC.productName = "Dancing Latte"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//                return
//
//            case "Ein Spanner" :
//                SelectOptionVC.productName = "Ein Spanner"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//                return
//
//            case "Filter" :
//                SelectOptionVC.productName = "Filter"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//                return
//
//            case "Espresso" :
//                SelectOptionVC.productName = "Espresso"
//                SelectOptionVC.productPrice = price
//                performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//                return
//
//            default:
//                return
//            }
//        }
        
        
        
//        switch (button.titleLabel!.text!) {
//
//        case "Americano" :
//            //
//            SelectOptionVC.productName = "Americano"
//            SelectOptionVC.productPrice = price
////                print(menuChooseButton[i])
//            print(button.titleLabel!.text!)
//            print(SelectOptionVC.productName)
//
////            dump("menuChooseButton : \(menuChooseButton)")
//
//
////            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
////             MenuListViewController > SelectOptionViewController 로 performSegue 를 통해 넘어가면서
////             위에서 지정한 delegate data 가 적용이 안되는듯
//
//            present(SelectOptionVC, animated: true, completion: nil)
//
//            return
//
//        case "Latte" :
//            SelectOptionVC.productName = "Latte"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
////                present(SelectOptionVC, animated: true, completion: nil)
//            return
//
//        case "Vanilla Latte" :
//            SelectOptionVC.productName = "Vanilla Latte"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//            return
//
//        case "Dancing Latte" :
//            SelectOptionVC.productName = "Dancing Latte"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//            return
//
//        case "Ein Spanner" :
//            SelectOptionVC.productName = "Ein Spanner"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//            return
//
//        case "Filter" :
//            SelectOptionVC.productName = "Filter"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//            return
//
//        case "Espresso" :
//            SelectOptionVC.productName = "Espresso"
//            SelectOptionVC.productPrice = price
//            performSegue(withIdentifier: "showSelectOptionSegue", sender: sender)
//            return
//
//        default:
//            return
//        }
        
    }
        
//
//        print("SelectOptionVC.productName : \(SelectOptionVC.productName)")
//        print("SelectOptionVC.price : \(SelectOptionVC.productPrice)")
        
        

//
//    @IBAction func orderMenu(_ sender: Any) {
//
//        let payTableVC = storyboard?.instantiateViewController(identifier: "PayTableViewController") as! MenuCartViewController
//
//        payTableVC.delegate = self
//
//        guard let productName = productNameLabel.text, let price = priceLabel.text else {
//            return
//        }
//
//        payTableVC.cartMenuName = productName
//        payTableVC.cartMenuPrice = price
//
//        present(payTableVC, animated: true, completion: nil)
//
//    }
//
}
