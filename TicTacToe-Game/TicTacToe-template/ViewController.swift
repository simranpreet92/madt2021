//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playAgainFlag = 0
    var flag = 1;
    var tagValues = [0,0,0,0,0,0,0,0,0]
    var currentPlayer = 1 // starting with cross
    let winningPositions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var isGameActive = true
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b5: UIButton!
    
    @IBOutlet weak var chosenButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonChosen(_ sender: UIButton) {
      
        
       //starting from first tag
        if(tagValues[sender.tag-1] == 0 || isGameActive == true)
        {
            //assigning  tag to first player
            tagValues[sender.tag-1] = currentPlayer
            //if 1st player is playing then he will mark cross
            if(currentPlayer == 1)
            {
                
                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())

                //pass next chance to another player
                currentPlayer = 2
                
            }
            else
            {
                sender.setImage(UIImage(named: "nought.png"), for: UIControl.State())
                //pass next chance to first player
                currentPlayer = 1
            }
            }
        
        for combinations in winningPositions{
                        if tagValues[combinations[0]] != 0 && tagValues[combinations[0]] == tagValues[combinations[1]] && tagValues[combinations[1]] == tagValues[combinations[2]]{
                            // we have a winner!
                            isGameActive = false

                            displayLabel.isHidden = false
                            playButton.isHidden = false

                            if tagValues[combinations[0]] == 1 {
                                sender.setImage(UIImage(named: "cross.png"), for: UIControl.State())
                                displayLabel.text = "X WINS!"
                               
                                sender.isEnabled = false
                                b1.isEnabled = false
                                b2.isEnabled = false
                                b3.isEnabled = false
                                b4.isEnabled = false
                                b5.isEnabled = false
                                b6.isEnabled = false
                                b7.isEnabled = false
                                b8.isEnabled = false
                                b9.isEnabled = false
                                playButton.isEnabled = true
                              
                                flag = 1
                                
                            }else if tagValues[combinations[1]] == 2{
                                sender.setImage(UIImage(named: "nought.png"), for: UIControl.State())
                                displayLabel.text = "0 WINS!"
                             
                                sender.isEnabled = false
                                b1.isEnabled = false
                                b2.isEnabled = false
                                b3.isEnabled = false
                                b4.isEnabled = false
                                b5.isEnabled = false
                                b6.isEnabled = false
                                b7.isEnabled = false
                                b8.isEnabled = false
                                b9.isEnabled = false
                                playButton.isEnabled = true
                              
                                flag = 1
                              
                            }
                            isGameActive = false
                            
                            for i in tagValues
                            {
                                if i == 0
                                {
                                    isGameActive = true
                                    break
                                }
                            }

                            if isGameActive == false
                            {

                                displayLabel.text = "IT WAS A DRAW"
                                displayLabel.isHidden = false
                                b1.isEnabled = false
                                b2.isEnabled = false
                                b3.isEnabled = false
                                b4.isEnabled = false
                                b5.isEnabled = false
                                b6.isEnabled = false
                                b7.isEnabled = false
                                b8.isEnabled = false
                                b9.isEnabled = false
                                }
                  
        }
        
        }
        
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        if flag == 1
        {
           
            
            b1.setImage(nil, for: .normal)
            b2.setImage(nil, for: .normal)
            b3.setImage(nil, for: .normal)
            b4.setImage(nil, for: .normal)
            b5.setImage(nil, for: .normal)
            b6.setImage(nil, for: .normal)
            b7.setImage(nil, for: .normal)
            b8.setImage(nil, for: .normal)
            b9.setImage(nil, for: .normal)
            displayLabel.text = "   "
            playButton.isEnabled = false
            b1.isEnabled = true
            b2.isEnabled = true
            b3.isEnabled = true
            b4.isEnabled = true
            b5.isEnabled = true
            b6.isEnabled = true
            b7.isEnabled = true
            b8.isEnabled = true
            b9.isEnabled = true
            isGameActive = true
        
           
            
        }
        if  flag == 0
        {
            playButton.isEnabled = true
           
        }
        
    }
    
   
}

