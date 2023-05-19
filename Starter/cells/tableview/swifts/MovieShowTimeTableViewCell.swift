//
//  MovieShowTimeTableViewCell.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import UIKit

class MovieShowTimeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSeeMore: UILabel!
    @IBOutlet weak var viewForBackground: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewForBackground.layer.cornerRadius = 4
       
        lblSeeMore.underlineText(text: "SEE MORE")

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
