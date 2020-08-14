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
        
        updateUI()
    }

    @IBAction func choose(_ sender: UIButton) {
        sender == choice1Button ? storyBrain.choose1() : storyBrain.choose2()
        
        updateUI()
    }
    
    
    func updateUI() {
        let story = storyBrain.currentStory()
        
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: UIControl.State.normal)
        choice2Button.setTitle(story.choice2, for: UIControl.State.normal)
    }
}

