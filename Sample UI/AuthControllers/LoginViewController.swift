//
//  LoginViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        loginBtn.layer.cornerRadius = 3
        loginBtn.layer.borderWidth = 0.85
        loginBtn.layer.borderColor = UIColor.white.cgColor
        
        username.attributedPlaceholder = NSAttributedString(
            string: "Username or Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        password.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.username.addBottomBorder()
        self.password.addBottomBorder()
    }
    
    @IBAction func login(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}

extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height-1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
