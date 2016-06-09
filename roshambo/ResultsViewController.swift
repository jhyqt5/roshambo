//
//  ResultsViewController.swift
//  roshambo
//
//  Created by Daniel Huang on 6/9/16.
//  Copyright © 2016 Daniel Huang. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var winStatement: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var selection: String!
    var cpuSelection: String!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //Computer makes random selection
        let roshambo = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random_uniform(UInt32(roshambo.count)))
        cpuSelection = roshambo[randomIndex]
        
        //gameLogic
        winnerIs()
    }
    
    func winnerIs() {
        if (selection == "Rock" && cpuSelection == "Rock") || (selection == "Paper" && cpuSelection == "Paper") || (selection == "Scissors" && cpuSelection == "Scissors") {
            
            imageView.image = UIImage(named: "itsATie.png")
            winStatement.text = "Everyone wins"
            
        } else if (selection == "Rock" && cpuSelection == "Paper") || (selection == "Paper" && cpuSelection == "Rock") {
            
            winStatement.text = "Paper wins"
            imageView.image = UIImage(named: "PaperCoversRock.png")
            
        } else if (selection == "Scissors" && cpuSelection == "Paper") || (selection == "Paper" && cpuSelection == "Scissors") {
            
            winStatement.text = "Scissors wins"
            imageView.image = UIImage(named: "ScissorsCutPaper.png")
            
        } else if (selection == "Rock" && cpuSelection == "Scissors") || (selection == "Scissors" && cpuSelection == "Rock") {
            
            winStatement.text = "Rock wins"
            imageView.image = UIImage(named: "RockCrushesScissors.png")
        
        }
    }
}
