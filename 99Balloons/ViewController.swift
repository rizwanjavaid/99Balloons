//
//  ViewController.swift
//  99Balloons
//
//  Created by Rizwan Javaid on 10/11/14.
//  Copyright (c) 2014 Rizwan Javaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    // Create the array which will hold all the balloon instances
    var balloonsArray:[Balloon] = []
    
    // Set the Current Index Variable which will hold the current index of the balloonsArray
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Call the Change Balloon Function
        self.changeBalloon()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        
        // Create a variable to hold the balloon at the current index
        let balloon = balloonsArray[currentIndex]
        
        // Update the balloon label and the background image
        balloonLabel.text = "\(balloon.number)"
        backgroundImage.image = balloon.backgroundImage
        
        // Increment the currentIndex by 1
        currentIndex += 1
    }

    // Helper function
    func changeBalloon() {
        
        // For loop to create 99 balloon instances
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            
            // Create a new instance of Balloon()
            var balloon = Balloon()
            
            // Assign balloonCount to be the balloon number
            balloon.number = balloonCount
            
            // Create a random number between 1 and 4
            var randomNumber = arc4random_uniform(UInt32(4))
            
            // Switch statement to assign an image to the random number
            switch randomNumber {
            case 1:
                balloon.backgroundImage = UIImage(named: "RedBalloon1.jpg")
            case 2:
                balloon.backgroundImage = UIImage(named: "RedBalloon2.jpg")
            case 3:
                balloon.backgroundImage = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.backgroundImage = UIImage(named: "RedBalloon4.jpg")
            }
            
            // Append the current balloon instance to the BalloonsArray
            balloonsArray.append(balloon)
            
        }
    
    }
    
    
    
    
    
    
    
    
    
    
}

