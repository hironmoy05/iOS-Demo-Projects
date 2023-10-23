//
//  FirstTableViewCell.swift
//  TwoCellsInOneTableViewDemo
//
//  Created by Repcard on 23/10/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    @IBOutlet weak var cellLabel: UILabel!
    
    var cellText: String = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        cellLabel.text = cellText
    }
    
}
