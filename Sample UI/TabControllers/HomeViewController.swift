//
//  HomeViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    var auth = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Home"
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool){
        if (!auth) {
            auth = true
            authCheck()
        }
    }
    
    private func authCheck() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "authNav")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
        
    }
    
}
