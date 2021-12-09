//
//  ProfileViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Profile"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(signOut))
        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        image.layer.borderWidth = 1.0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
    }
    
    @objc func signOut(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authNav")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }

}
