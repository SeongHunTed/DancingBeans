//
//  OptionViewController.swift
//  DancingBeans_0106
//
//  Created by Hoon on 2022/01/07.
//

import UIKit

class OptionViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var menuImageTag: UIImageView!
    @IBOutlet weak var menuNameTag: UILabel!
    
    var menuName: String?
    var menuImage: UIImage?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuNameTag.text = menuName
        menuImageTag.image = menuImage
    }
    
    @IBOutlet var iceHotButtons: [UIButton]!
    var indexOfOneAndOnly: Int?
    
    @IBOutlet var shotButtons: [UIButton]!
    var indexOfOneAndOnly2: Int?
    
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

