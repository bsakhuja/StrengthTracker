//
//  RoutineTableViewCell.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 8/5/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

class RoutineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var routineName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
