//
//  ViewControllerAmericano.swift
//  Dancing_Ted
//
//  Created by Hoon on 2021/12/29.
//

import UIKit


class ViewControllerAmericano: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        // 모달 뷰 관련 함수를 이곳에 작성
    }
//    let menuImage =
//    [UIImage(named: "Americano"),
//     UIImage(named: "Latte"),
//     UIImage(named: "Vanilla"),
//     UIImage(named: "Dancing"),
//     UIImage(named: "Filter"),
//     UIImage(named:  "Espresso")]
//    
//    @IBOutlet weak var menuImagePop: UIImageView!
//    var menuImagepop = UIImage(named: "Americano")

    
//    @IBAction func americanoPushed(_ sender: UIButton) {
//        menuImagePop.image = menuImage[0]
//    }
//    
    
    @IBAction func pushOrderAmericano(_ sender: UIButton) {
        
        print("Americano Ordered")
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
