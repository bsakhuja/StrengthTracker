//
//  CreateExerciseViewController.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 7/29/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

protocol CreateExerciseViewControllerDelegate: class {
    
    func createExerciseViewController(createExerciseViewController: CreateExerciseViewController, didSaveExerciseNamed name: String)
    
}
class CreateExerciseViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {

    // MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var exerciseNameTextField: UITextField!
    weak var delegate: CreateExerciseViewControllerDelegate?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  
    @IBAction dynamic func saveTapped(button: UIBarButtonItem) {
        if let name = exerciseNameTextField.text {
            delegate?.createExerciseViewController(self, didSaveExerciseNamed: name)
    }

}
}
