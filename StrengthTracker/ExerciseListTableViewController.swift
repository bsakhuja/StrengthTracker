//
//  ExerciseListTableViewController.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 7/29/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

private let CellIdentifier = "ExerciseTableViewCell"

class ExerciseListViewController: UITableViewController {

    // MARK: Properties
    var exercises = [Exercise]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction dynamic func presentNewActivityViewController() {
        let createExerciseViewController = self.storyboard?.instantiateViewControllerWithIdentifier(String(CreateExerciseViewController.self)) as! CreateExerciseViewController
        createExerciseViewController.delegate = self
        navigationController?.pushViewController(createExerciseViewController, animated: true)
    }
    
}

extension ExerciseListViewController: CreateExerciseViewControllerDelegate {
    
    func createExerciseViewController(createExerciseViewController: CreateExerciseViewController, didSaveExerciseNamed name: String) {
        if name.isEmpty || name == " "{
            let alert = UIAlertController(title: "Exercise name field blank", message: "Please enter an exercise name.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
        exercises.append(Exercise(exerciseNameParam: name)!)
        tableView.reloadData()
        navigationController?.popViewControllerAnimated(true)
        }
    }
}

extension ExerciseListViewController: CreateExerciseInRoutineTabViewControllerDelegate {
    
    func createExerciseInRoutineTabViewController(createExerciseInRoutineTabViewController: CreateExerciseInRoutineTabViewController, didSaveExerciseNamed name: String) {
        if name.isEmpty || name == " "{
            let alert = UIAlertController(title: "Exercise name field blank", message: "Please enter an exercise name.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            exercises.append(Exercise(exerciseNameParam: name)!)
            tableView.reloadData()
            navigationController?.popViewControllerAnimated(true)
        }
    }
}



extension ExerciseListViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! ExerciseTableViewCell
        cell.exerciseName.text = exercises[indexPath.row].exerciseName
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
}
