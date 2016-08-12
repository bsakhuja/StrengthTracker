//
//  Exercise.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 7/29/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

class Exercise {
    // MARK: Properties
    var exerciseName: String
    
    // MARK: Initialization
    init?(exerciseNameParam: String) {
        self.exerciseName = exerciseNameParam
        
        if exerciseNameParam.isEmpty {
            return nil
        }
    }
}
