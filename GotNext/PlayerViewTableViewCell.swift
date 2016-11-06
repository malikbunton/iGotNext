//
//  PlayerViewTableViewCell.swift
//  GotNext
//
//  Created by Ibrahim Conteh on 11/6/16.
//  Copyright © 2016 SpellHouseTeam. All rights reserved.
//

import UIKit

class PlayerViewTableViewCell: UITableViewCell {

    @IBOutlet var pictureView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var experienceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
