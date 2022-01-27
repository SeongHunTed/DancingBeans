import UIKit

class SelectOptionViewController: UIViewController, MenuCartDelegate {
    
    var delegate: SelectOptionDelegate?
    var productName: String = ""
    var productPrice: String = ""
    var itemCount: Int = 1
    
    var addCount: Int = 0
    
    
    @IBOutlet weak var optionMenuNameLabel: UILabel!
    @IBOutlet weak var optionMenuPriceLabel: UILabel!
     
    
    @IBAction func insertCartButtonTapped(_ sender: UIButton) {
          dismiss(animated: true, completion: nil)
          delegate?.alarmCartIsFilled(itemCount: itemCount)   // 권한 중에 이런 액션을 실행할거야, 이런 요청을 날릴거야
      }

    @IBAction func addMenuCartButtonTapped(_ sender: UIButton) {
        
        let MenuCartVC = storyboard?.instantiateViewController(withIdentifier:
        "MenuCartViewController") as! MenuCartViewController
        MenuCartVC.delegate = self
        
        guard let productName = optionMenuNameLabel.text, let productPrice = optionMenuPriceLabel.text else {
            return
        }
        
        MenuCartVC.cartMenuName = self.productName
        MenuCartVC.cartMenuPrice = self.productPrice
        
        print("MenuCartVC.cartMenuName : \(MenuCartVC.cartMenuName)")
        
        print("MenuCartVC.cartMenuPrice : \(MenuCartVC.cartMenuPrice)")
        
        print("before addCount : \(addCount)")
        
        addCount += 1
        
        print("after addCount : \(addCount)")
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func alarmCartIsFilled(itemCount: Int) {
        let alertVC = UIAlertController(title: "장바구니 확인", message: "장바구니에 \(itemCount)개의 상품이 추가되었습니다.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alertVC.addAction(okAction)
        
        present(alertVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionMenuNameLabel.text = productName
        optionMenuPriceLabel.text = productPrice
        // Do any additional setup after loading the view.
    }
    

}
