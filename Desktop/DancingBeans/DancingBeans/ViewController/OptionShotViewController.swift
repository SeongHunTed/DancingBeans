//
//  OptionShotViewController.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/02/07.
//

import UIKit

class OptionShotViewController: UIViewController, SelectOptionBottomSheetDelegate {
    
//    var delegate: SelectOptionBottomSheetDelegate?
    
    func alarmCartIsFilled(itemCount: Int) {
    }

    
    @IBOutlet weak var esspressoShotCountLabel: UILabel!
    @IBOutlet weak var esspressoShotCountStepper: UIStepper!

    
    @IBAction func countEsspressoShot(_ sender: UIStepper) {
        esspressoShotCountLabel.text = Int(sender.value).description
    }
    
    
    func adjustOption() {
        let SelectOptionBottomSheetVC = storyboard?.instantiateViewController(withIdentifier: "SelectOptionBottomSheetViewController") as! SelectOptionBottomSheetViewController
        SelectOptionBottomSheetVC.delegate = self
        
        
//        SelectOptionBottomSheetVC.shotCountLabel.text = "program test"
//
//        if SelectOptionBottomSheetVC.shotCountLabel.text == nil {
//            SelectOptionBottomSheetVC.shotCountLabel.text = "넘어가나요"
//        } else {
//            SelectOptionBottomSheetVC.shotCountLabel.text = "흠??"
//        }
        
        
////        if let test = SelectOptionBottomSheetVC.shotCountLabel {
//            print(SelectOptionBottomSheetVC.shotCountLabel.text)
////            SelectOptionBottomSheetVC.shotCountLabel.text = esspressoShotCountLabel.text!
//
//            print("드러온나")
//            SelectOptionBottomSheetVC.shotCountLabel.text = "tetetssttt"
//        } else {
//            print("nono")
//        }
        
//            SelectOptionBottomSheetVC.shotCountLabel.text = esspressoShotCountLabel.text!
        
       
//        self.dismiss(animated: true, completion: nil)
        
    }

    func testAction() {
//
//        let vc = self.presentingViewController as? SelectOptionBottomSheetViewController
//
//        vc?.shotCount = self.esspressoShotCountLabel.text!
//
//        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.shotCountTest = self.esspressoShotCountLabel.text!
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func adjustOption(_ sender: Any) {
//        adjustOption()
        testAction()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

}
