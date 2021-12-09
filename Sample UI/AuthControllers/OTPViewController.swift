//
//  OTPViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class OTPViewController: UIViewController {
    @IBOutlet weak var otp: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        submit.layer.cornerRadius = 3
        submit.layer.borderWidth = 0.85
        submit.layer.borderColor = UIColor.white.cgColor
        
        otp.attributedPlaceholder = NSAttributedString(
            string: "Enter OTP",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.otp.addBottomBorder()
    }
    
    @IBAction func goToMain(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
