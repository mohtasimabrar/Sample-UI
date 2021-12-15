//
//  NotificationViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let notifications = ["Offer 4", "Offer 2", "Offer 3", "Offer 1", "Offer 5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Offers"
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as? NotificationViewCell else {
            fatalError("Unable to load")
        }
        
        let notification = notifications[indexPath.row]
        
        cell.bannerImg.image = UIImage(named: notification)
        cell.button.setTitle("Claim Offer Today!", for: .normal)
        cell.wholeView.layer.cornerRadius = 10
        cell.wholeView.layer.masksToBounds = true
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = bgColorView
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    
}
