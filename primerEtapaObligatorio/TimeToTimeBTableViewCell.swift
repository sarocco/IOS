//
//  TimeToTimeBTableViewCell.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 28/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class TimeToTimeBTableViewCell: UITableViewCell {

    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBOutlet weak var iconBLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
