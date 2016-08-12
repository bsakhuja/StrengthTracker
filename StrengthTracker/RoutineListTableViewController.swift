//
//  RoutineListTableViewController.swift
//  StrengthTracker
//
//  Created by Brian Sakhuja on 8/5/16.
//  Copyright © 2016 Brian Sakhuja. All rights reserved.
//

import UIKit

private let CellIdentifier = "RoutineTableViewCell"

class RoutineListTableViewController: UITableViewController {
    
    // MARK: PRoperties
    var routines = [Routine]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction dynamic func presentNewActivityViewController() {
        let createRoutineViewController = self.storyboard?.instantiateViewControllerWithIdentifier(String (CreateRoutineViewController.self)) as! CreateRoutineViewController
        createRoutineViewController.delegate = self
        navigationController?.pushViewController(createRoutineViewController, animated: true)
    }
    
    
}

extension RoutineListTableViewController: CreateRoutineViewControllerDelegate {
    
    func createRoutineViewController(createRoutineViewController: CreateRoutineViewController, didSaveRoutineNamed name: String) {
        if name.isEmpty || name == " " {
            let alert = UIAlertController(title: "Routine name field blank", message: "Please enter a routine name.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            routines.append(Routine(routineNameParam: name)!)
            tableView.reloadData()
            navigationController?.popViewControllerAnimated(true)
        }
    }
}


extension RoutineListTableViewController {
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! RoutineTableViewCell
        cell.routineName.text = routines[indexPath.row].routineName
        return cell
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routines.count
    }
}
