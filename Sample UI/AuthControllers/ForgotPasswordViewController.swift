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
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        submit.layer.cornerRadius = 3
        submit.layer.borderWidth = 0.85
        submit.layer.borderColor = UIColor.white.cgColor
        
        phoneNumber.attributedPlaceholder = NSAttributedString(
            string: "Enter Phone Number",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        self.phoneNumber.addBottomBorder()
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
