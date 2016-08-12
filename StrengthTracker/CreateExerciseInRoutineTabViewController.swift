//
//  CreateExerciseInRoutineTabViewController.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 8/6/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

protocol CreateExerciseInRoutineTabViewControllerDelegate: class {
    
    func createExerciseInRoutineTabViewController(createExerciseInRoutineTabViewController: CreateExerciseInRoutineTabViewController, didSaveExerciseNamed name: String)
    
}

class CreateExerciseInRoutineTabViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    
    
    // MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var exerciseNameTextField: UITextField!
    weak var delegate: CreateExerciseInRoutineTabViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.target = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func saveTapped(sender: UIBarButtonItem) {
        if let name = exerciseNameTextField.text {
            delegate?.createExerciseInRoutineTabViewController(self, didSaveExerciseNamed: name)
        }
        
    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

