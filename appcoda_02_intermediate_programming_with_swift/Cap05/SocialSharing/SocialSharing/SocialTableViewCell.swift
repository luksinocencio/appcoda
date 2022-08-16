//
//  SocialTableViewCell.swift
//  SocialSharing
//
//  Created by Lucas Inocencio on 16/07/20.
//  Copyright © 2020 Lucas Inocencio. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {

    @IBOutlet var featuredImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var shareButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

