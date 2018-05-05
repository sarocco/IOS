//
//  DTTableViewCell.swift
//  primerEtapaObligatorio
//
//  Created by Carolina Rocco on 5/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class DTTableViewCell: UITableViewCell {

    @IBOutlet weak var nameDTLabel: UILabel!
    @IBOutlet weak var idDTLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
