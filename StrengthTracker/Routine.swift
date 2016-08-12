//
//  Routine.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 8/5/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

class Routine {
    // MARK: Properties
    
    /* Name of the routine
     * (i.e. "Chest & Abs" */
    var routineName: String
    
    /* List of exercise objects */
   // var exercises: [Exercise]
    
    
    
    // MARK: Initialization
    init?(routineNameParam: String) {
        self.routineName = routineNameParam
     //   self.exercises = exercisesParam
        
        /* Need both routineName and exercises parameters to be nonempty */
        if routineNameParam.isEmpty {
            return nil
        }
    }
}

