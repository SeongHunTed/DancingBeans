//
//  SecondViewController.swift
//  UserDefaultPractice
//
//  Created by Hoon on 2022/01/18.
//

import Foundation
import UIKit

struct Setting{
    enum State:String{
        case Ice
        case Shot
        case Count
    }
}

class SecondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var iceSwitch: UISwitch! // Ice
    @IBOutlet weak var shotSwitch: UISwitch! // 샷
    @IBOutlet weak var count: UILabel! //음료 개수
    
    @IBAction func countStepper(_ sender: UIStepper) {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        count.text = Int(sender.value).description
        
    }
    

    @IBAction func saveBtnTapped(_ sender: UIButton) {
        UserDefaults.standard.set(iceSwitch.isOn, forKey: "Ice")
        UserDefaults.standard.set(shotSwitch.isOn, forKey: "Shot")
        UserDefaults.standard.set(count.value(forKey: "0"), forKey: "0")
    }
    
}

extension SecondViewController{
    func setState(){
        let userDefaults = UserDefaults.standard
        if let Ice = userDefaults.value(forKey: Setting.State.Ice.rawValue),
           let Shot = userDefaults.value(forKey: Setting.State.Shot.rawValue){
//           let Count = userDefaults.value(forKey: Setting.State.Count.rawValue){
            iceSwitch.isOn = Ice as! Bool
            shotSwitch.isOn = Shot as! Bool
//            count.value(forKey: "0") = Count as! String
        } else {
            iceSwitch.isOn = true
            shotSwitch.isOn = true
        }
    }
}
