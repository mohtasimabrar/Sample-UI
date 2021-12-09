//
//  OnBoardingViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class OnBoardingViewController: UIViewController {
    @IBOutlet weak var newPass: UITextField!
    @IBOutlet weak var reNewPass: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        submit.layer.cornerRadius = 3
        submit.layer.borderWidth = 0.85
        submit.layer.borderColor = UIColor.white.cgColor
        
        newPass.attributedPlaceholder = NSAttributedString(
            string: "Enter New Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        reNewPass.attributedPlaceholder = NSAttributedString(
            string: "Re-Enter New Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.newPass.addBottomBorder()
        self.reNewPass.addBottomBorder()
    }
    

    @IBAction func onSubmit(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
