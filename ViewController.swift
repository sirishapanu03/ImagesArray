//
//  ViewController.swift
//  CodeDisplay
//
//  Created by Panuganti, Sirisha on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    //creation od array of courses
    var courses = [["img01", "44542", "Network Security", "Fall 2023"],
                   ["img02", "44643", "ios", "Fall 2023"],
                   ["img03", "445555", "Data Streaming", "Summer 2024"]]
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Previous button is disabled
        previousBtnOutlet.isEnabled = false
        
        //calling the method
        updateDisplay(imageNumber)
        
        
        //Display the first course details
        //firstLabel.text = courses[0][1]
        //secondLabel.text = courses[0][2]
        //thirdLabel.text = courses[0][3]
        //imageDisplay.image = UIImage(named: courses[0][0])
        
    
    }
    
    
    @IBOutlet weak var previousBtnOutlet: UIButton!
    
    
    @IBOutlet weak var nextBtnOutlet: UIButton!
    
    
    @IBAction func previousbtnClicked(_ sender: UIButton) {
        
        //onclicking previous btn next btn has to be enabled
        nextBtnOutlet.isEnabled = true
        
        //has to go to the previous displaying courses
        imageNumber = imageNumber - 1
        //calling the function
        updateDisplay(imageNumber)
        
        //at the begin page previous btn must be disabled
        if(imageNumber == 0){
            previousBtnOutlet.isEnabled = false
        }
        
        
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        //previous btn should be enabled
        previousBtnOutlet.isEnabled = true
        
        //second page array must be displayed
        imageNumber = imageNumber + 1
        //calling the function that is repeated
        updateDisplay(imageNumber)
        
        //Display the first course details
        //firstLabel.text = courses[1][1]
        //secondLabel.text = courses[1][2]
        //thirdLabel.text = courses[1][3]
        //imageDisplay.image = UIImage(named: courses[1][0])
        
        //in the end of the array next btn should be enabled
        if(imageNumber == courses.count-1){
            nextBtnOutlet.isEnabled = false
        }
        
    }
    func updateDisplay(_ imageNumber:Int){
        firstLabel.text = courses[imageNumber][1]
        secondLabel.text = courses[imageNumber][2]
        thirdLabel.text = courses[imageNumber][3]
        imageDisplay.image = UIImage(named: courses[imageNumber][0])
        
    }
    
}
