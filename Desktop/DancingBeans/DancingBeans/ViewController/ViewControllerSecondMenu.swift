//
//  ViewControllerSecondMenu.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/05.
//

import UIKit

class ViewControllerSecondMenu: UIViewController {

    @IBOutlet weak var menuNameTag: UILabel!
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuValueLabel: UILabel!
    @IBOutlet weak var menuCountStepper: UIStepper!
    @IBOutlet weak var menuOrderPrice: UILabel!
    
    
    @IBAction func menuStepperValueChanged(_ sender: UIStepper) {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        var price = numberFormatter.string(from: NSNumber(value: sender.value * 4500))
        
        
        menuValueLabel.text = Int(sender.value).description
        
//        menuOrderPrice.text = Int(sender.value*4500).description + " 원"
        menuOrderPrice.text = price! + " 원"
        
        
        
        
        
    }
    
    @IBAction func backToMain() {
        self.dismiss(animated: true, completion: nil)
    }
    
    var menuName: String?
    var menuImage: UIImage?
    
    
    // Common View(Menu Image, Menu Label)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuCountStepper.wraps = true
        menuCountStepper.autorepeat = true
        menuCountStepper.maximumValue = 30
        
            }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuNameTag.text = menuName
        menuImageView.image = menuImage
        
    }
    
    @IBOutlet var iceHotButtons: [UIButton]!
    var indexOfOneAndOnly: Int?
    
    @IBOutlet var shotButtons: [UIButton]!
    var indexOfOneAndOnly2: Int?
    
    
    // Option View(temperature, place, syrup, shot ...etc)
    
    @IBAction func iceHotTouchButtons(_ sender: UIButton){
        if indexOfOneAndOnly != nil {
            if !sender.isSelected{
                for index in iceHotButtons.indices{
                    iceHotButtons[index].isSelected = false
                }
                sender.isSelected = true
                indexOfOneAndOnly = iceHotButtons.firstIndex(of: sender)
                
            } else {
                sender.isSelected = false
                indexOfOneAndOnly = nil
            }
        } else {
            sender.isSelected = true
            indexOfOneAndOnly = iceHotButtons.firstIndex(of: sender)
        }
    }
    
    @IBAction func shotTouchButtons(_ sender: UIButton) {
        if indexOfOneAndOnly2 != nil{
            if !sender.isSelected {
                for index in shotButtons.indices{
                    shotButtons[index].isSelected = false
                }
                sender.isSelected = true
                indexOfOneAndOnly2 = shotButtons.firstIndex(of: sender)
            } else {
                sender.isSelected = false
                indexOfOneAndOnly2 = nil
            }
        } else {
            sender.isSelected = true
            indexOfOneAndOnly2 = shotButtons.firstIndex(of: sender)
        }
    }
    
}
