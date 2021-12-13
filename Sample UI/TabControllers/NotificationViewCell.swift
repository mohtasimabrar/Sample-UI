//
//  NotificationViewCell.swift
//  Sample UI
//
//  Created by BS236 on 13/12/21.
//

import UIKit

class NotificationViewCell: UITableViewCell {
    
    @IBOutlet weak var bannerImg: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
