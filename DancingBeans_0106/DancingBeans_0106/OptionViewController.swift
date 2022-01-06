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
    
    //viewwillappear 함수
}
