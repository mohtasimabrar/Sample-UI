//
//  NotificationViewController.swift
//  Sample UI
//
//  Created by BS236 on 6/12/21.
//

import UIKit

class NotificationViewController: UITableViewController {
    
    let notifications = ["Chittagong", "Sylhet", "Dhaka", "Barishal"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Notifications"
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as? NotificationViewCell else {
            fatalError("Unable to load")
        }
        
        let notification = notifications[indexPath.row]
        
        cell.bannerImg.image = UIImage(named: notification)
        cell.button.titleLabel!.text = notification
        
        return cell
    }
    
}
