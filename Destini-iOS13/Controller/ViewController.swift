//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        storyLabel.text = storyBrain.story[0].title
//
//        choice1Button.setTitle(storyBrain.story[0].choise1, for: .normal)
//        choice1Button.backgroundColor = .red
//
//        choice2Button.setTitle(storyBrain.story[0].choise2, for: .normal)
//        choice2Button.backgroundColor = .purple
        
        updateUI()
        

    }

    @IBAction func choiseMade(_ sender: UIButton) {
        guard let userChoise = sender.currentTitle else { return }
        storyBrain.userStory(choise: userChoise)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.story[storyBrain.getStoryNumber()].title
        
        choice1Button.setTitle(storyBrain.story[storyBrain.getStoryNumber()].choise1.text, for: .normal)
        choice1Button.backgroundColor = .red
        
        choice2Button.setTitle(storyBrain.story[storyBrain.getStoryNumber()].choise2.text, for: .normal)
        choice2Button.backgroundColor = .purple
    }
    
}

