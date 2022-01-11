//
//  ViewControllerSecondMenu.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/05.
//

import UIKit

class ViewControllerSecondMenu: UIViewController {

    // IBOutlet
    
    @IBOutlet weak var menuNameTag: UILabel!
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuValueLabel: UILabel!
    @IBOutlet weak var menuCountStepper: UIStepper!
    @IBOutlet weak var menuOrderPrice: UILabel!
    @IBOutlet var iceHotButtons: [UIButton]!
    @IBOutlet var shotButtons: [UIButton]!

    
    // IBAction
    
    //
    @IBAction func menuStepperValueChanged(_ sender: UIStepper) {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        let price = numberFormatter.string(from: NSNumber(value: sender.value * menuPrice))
        
        menuValueLabel.text = Int(sender.value).description
        menuOrderPrice.text = price! + " 원"
        
    }
    
    // 담기 버튼 action
    @IBAction func backToMain() {
        self.dismiss(animated: true, completion: nil)
    }
    

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
    
    
    // var

    var menuName: String?   // --- 이전 VC에서 정의할 메뉴 이름
    var menuImage: UIImage? // --- 이전 VC에서 정의할 메뉴 사진
    var menuPrice: Double = 0.0  // --- 이전 VC에서 정의할 메뉴 가격
    
    
    var indexOfOneAndOnly: Int?
    var indexOfOneAndOnly2: Int?
    
    
    

    // view

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuCountStepper.wraps = true
        menuCountStepper.autorepeat = true
        menuCountStepper.maximumValue = 30
        
        
            }
    
    // 이전 VC 에서 받아 appear 할 property
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuNameTag.text = menuName
        menuImageView.image = menuImage
        
    }
    
}



// 메뉴에 맞게 가격 자동 수정
// 메뉴에 맞게 옵션 자동 array
// 주문 확인 및 수정(추가 or 삭제) VC
// 최종 주문
