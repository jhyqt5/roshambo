//
//  ViewController.swift
//  roshambo
//
//  Created by Daniel Huang on 6/9/16.
//  Copyright © 2016 Daniel Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userSelection: String!
    
    @IBAction func userChoice(sender: UIButton) {
        
        
        if sender.tag == 0 {
            userSelection = "Rock"
        } else if sender.tag == 1 {
            userSelection = "Scissors"
        } else {
            userSelection = "Paper"
        }
        
        
        performSegueWithIdentifier("showResults", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showResults" {
            let controller = segue.destinationViewController as! ResultsViewController
            controller.selection = userSelection
        }
    }


}

