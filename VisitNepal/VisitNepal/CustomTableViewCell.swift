//
//  CustomTableViewCell.swift
//  VisitNepal
//
//  Created by Rabin on 28/12/2017.
//  Copyright © 2017 Rabin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var placelbl: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var placeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
