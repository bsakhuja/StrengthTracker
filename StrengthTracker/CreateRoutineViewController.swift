//
//  CreateRoutineViewController.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 8/5/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

private let CellIdentifier = "ExerciseCell"

protocol CreateRoutineViewControllerDelegate: class {
    
    func createRoutineViewController(createRoutineViewController: CreateRoutineViewController, didSaveRoutineNamed name: String)
}


class CreateRoutineViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    weak var delegate: CreateRoutineViewControllerDelegate?
    var exercises: [Exercise] = [Exercise(exerciseNameParam: "test1")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction dynamic func presentNewActivityViewController() {
        let createExerciseInRoutineTabViewController = self.storyboard?.instantiateViewControllerWithIdentifier(String(CreateExerciseInRoutineTabViewController.self)) as! CreateExerciseInRoutineTabViewController
        createExerciseInRoutineTabViewController.delegate = self
        navigationController?.presentViewController(createExerciseInRoutineTabViewController, animated: true, completion: nil)
    }
    
    @IBAction dynamic func saveTapped(button: UIBarButtonItem) {
        
    }
    
}

extension CreateRoutineViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! ExerciseTableViewCell
        cell.exerciseName.text = exercises[indexPath.row].exerciseName
        return cell
    }
}

extension CreateRoutineViewController: UITableViewDelegate {
    
}

