//
//  ExerciseTableViewCell.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 7/29/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var exerciseName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
