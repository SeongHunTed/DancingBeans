//
//  PayViewController.swift
//  DancingBeans_0106
//
//  Created by Hoon on 2022/01/17.
//

import UIKit

class PayViewContoller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var menuNamePay: UILabel!
    @IBOutlet weak var menuCountPay: UILabel!
    @IBOutlet weak var menuPricePay: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        let ud = UserDefaults.standard
        
        menuNamePay.text = ud.string(forKey: "Menu")
        menuCountPay.text = ud.string(forKey: "Count")
        menuPricePay.text = ud.string(forKey: "Price")
    }
}
