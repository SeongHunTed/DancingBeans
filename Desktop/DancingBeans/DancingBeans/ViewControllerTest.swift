//
//  ViewControllerTest.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/06.
//

import UIKit

class ViewControllerTest: UIViewController {
    
    @IBOutlet weak var menuImageView: UIImageView!

    var menuImage: UIImage? = UIImage(named: "americano")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuImageView.image = menuImage
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
