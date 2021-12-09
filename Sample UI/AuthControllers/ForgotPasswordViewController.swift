//
//  ForgotPasswordViewController.swift
//  Sample UI
//
//  Created by BS236 on 7/12/21.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        submit.layer.cornerRadius = 3
        submit.layer.borderWidth = 0.85
        submit.layer.borderColor = UIColor.white.cgColor
        
        phoneNumber.attributedPlaceholder = NSAttributedString(
            string: "Enter Phone Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {        
        self.phoneNumber.addBottomBorder()
    }

}
