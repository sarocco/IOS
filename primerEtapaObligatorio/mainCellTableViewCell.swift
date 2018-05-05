//
//  mainCellTableViewCell.swift
//  primerEtapaObligatorio
//
//  Created by SP08 on 19/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MainCellTableViewCell: UITableViewCell {

    //Outlets labels
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelStadium: UILabel!
    @IBOutlet weak var labelGroup: UILabel!
    @IBOutlet weak var labelCountryOne: UILabel!
    @IBOutlet weak var labelCountryTwo: UILabel!
    @IBOutlet weak var labelResultA: UILabel!
    @IBOutlet weak var labelResultB: UILabel!
    //Outlets pictures
    
    @IBOutlet weak var pictureCountryOne: UIImageView!
    @IBOutlet weak var pictureCountryTwo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
