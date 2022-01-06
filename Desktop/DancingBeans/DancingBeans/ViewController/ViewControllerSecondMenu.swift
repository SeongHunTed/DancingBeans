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
    
    
    var menuName: String?
    var menuImage: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuNameTag.text = menuName
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
