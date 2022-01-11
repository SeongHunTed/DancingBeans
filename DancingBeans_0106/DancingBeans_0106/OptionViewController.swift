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
    
    
    // IBOutlet
    @IBOutlet weak var menuImageTag: UIImageView!
    @IBOutlet weak var menuNameTag: UILabel!
    @IBOutlet weak var menuValueLabel: UILabel!
    @IBOutlet weak var menuOrderPrice: UILabel!
    @IBOutlet var iceHotButtons: [UIButton]!
    @IBOutlet var shotButtons: [UIButton]!

    
    // var
    var indexOfOneAndOnly2: Int?
    var indexOfOneAndOnly: Int?
    var menuName: String?
    var menuImage: UIImage?
    var menuPrice: Double = 0.0
    
    
    // view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuNameTag.text = menuName
        menuImageTag.image = menuImage
    }
    

    // 메뉴개수 정하기
    @IBAction func menuStepper(_ sender: UIStepper) {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let price = numberFormatter.string(from: NSNumber(value: sender.value * menuPrice))
        
        menuValueLabel.text = Int(sender.value).description
        menuOrderPrice.text = price! + " 원"
        
        
    }
    
    // 아이스,핫 선택 스위치
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
    
    //샷 1샷, 2샷 고르기
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
    
    // 선택한 음료담는 버튼 -> 메인화면으로 이동
    @IBAction func optionPageDone(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

