//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {

    let story =
        [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choise1: Choise(text: "I'll hop in. Thanks for the help!", destination: 2),
            choise2: Choise(text: "Better ask him if he's a murderer first.", destination: 1)
    ),
    Story(
        title: "He nods slowly, unfazed by the question.",
        choise1: Choise(text:  "At least he's honest. I'll climb in.", destination: 2),
        choise2: Choise(text: "Wait, I know how to change a tire.", destination: 3)
    ),
    Story(
        title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        choise1: Choise(text:  "I love Elton John! Hand him the cassette tape.", destination: 5),
        choise2: Choise(text:  "It's him or me! You take the knife and stab him.", destination: 4)
    ),
    Story(
        title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        choise1: Choise(text:  "The", destination: 0),
        choise2: Choise(text: "End", destination: 0)
    ),
    Story(
        title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        choise1: Choise(text: "The", destination: 0),
        choise2: Choise(text:  "End", destination: 0)
    ),
    Story(
        title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
        choise1: Choise(text:  "The", destination: 0),
        choise2: Choise(text:  "End", destination: 0)
    )
    ]
    
    var currentStoryNumber : Int = 0
    
    func getStoryNumber() -> Int{
        return currentStoryNumber
    }
    
    mutating func userStory(choise userChoise: String) {
        if userChoise == story[currentStoryNumber].choise1.text{
            changeStoryNumber(newStoryNumber: story[currentStoryNumber].choise1.choiseDestination)
        } else {
            changeStoryNumber(newStoryNumber: story[currentStoryNumber].choise2.choiseDestination)
        }
    }
    
    mutating func changeStoryNumber(newStoryNumber : Int) {
        currentStoryNumber = newStoryNumber
    }
    
    
}
