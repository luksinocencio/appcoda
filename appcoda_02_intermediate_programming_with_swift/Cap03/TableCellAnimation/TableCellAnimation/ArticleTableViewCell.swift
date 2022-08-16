//
//  ArticleTableViewCell.swift
//  TableCellAnimation
//
//  Created by Lucas Inocencio on 15/07/20.
//  Copyright © 2020 Lucas Inocencio. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var postImageView:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
