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
        SelectOptionBottomSheetVC.shotCountLabel = UILabel()


        if let test = SelectOptionBottomSheetVC.shotCountLabel {
            print(SelectOptionBottomSheetVC.shotCountLabel.text)
//            SelectOptionBottomSheetVC.shotCountLabel.text = esspressoShotCountLabel.text!
            SelectOptionBottomSheetVC.shotCountLabel.text = "tetetssttt"
            print("드러온나")
        } else {
            print("nono")
        }
        
//            SelectOptionBottomSheetVC.shotCountLabel.text = esspressoShotCountLabel.text!
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func adjustOption(_ sender: Any) {
        adjustOption()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

}
