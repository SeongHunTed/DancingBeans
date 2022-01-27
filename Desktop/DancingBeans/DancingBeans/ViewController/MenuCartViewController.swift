//
//  cartMenuViewController.swift
//  DancingBeans
//
//  Created by JAEHYEON on 2022/01/26.
//

import UIKit

class MenuCartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellIdentifier: String = "cell"
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // section 개수
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 
        switch section {
            
        case 0:
            return 1 // section 수를 어떻게 수정해볼까?
            
        default:
            return 0
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
//        let text: String = indexPath.section == 0 ? //
        
//        cell.textLabel?.text = text
        
        return cell
    }
    

    var delegate: MenuCartDelegate?
    
    var cartMenuName: String = ""
    var cartMenuPrice: String = ""
        
    @IBOutlet weak var cartMenuNameLabel: UILabel!
    @IBOutlet weak var cartMenuPriceLabel: UILabel!

    private func setUI() {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
        cartMenuNameLabel.text = cartMenuName
        cartMenuPriceLabel.text = cartMenuPrice
        // Do any additional setup after loading the view.
    }
    
}
