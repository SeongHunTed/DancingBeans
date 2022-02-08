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
        
        
        if let test = SelectOptionBottomSheetVC.shotCountLabel {
            SelectOptionBottomSheetVC.shotCountLabel.text = esspressoShotCountLabel.text!
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
    
//    override func viewWillDisappear(_ animated: Bool) {
//
//        let SelectOptionBottomSheetVC = storyboard?.instantiateViewController(withIdentifier: "SelectOptionBottomSheetViewController") as! SelectOptionBottomSheetViewController
//
//        SelectOptionBottomSheetVC.delegate = self
//
//        SelectOptionBottomSheetVC.menuShotCount = esspressoShotCountLabel.text!
//        print("disappear?")
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
