//
//  LevelThreeQuestionList.swift
//  Rmitium
//
//  Created by Aoi Mizu on 8/26/16.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
struct LevelThreeQuestionList {
    var listOfQuestions:[LevelThreeQuestion]
    var index = 0
    
    
    init(){
        listOfQuestions = LevelThreeQuestion.getQuestions()
        //shuffle()
        select(1)
    }
    
    mutating func shuffle() {
        
        // Perform the swap operation equal to the number of Questions in the list
        for currentQuestionIndex in 0..<listOfQuestions.count-1 {
            
            // Random number between 0 and the number of Questions in list
            //let randomQuestionIndex = Int(arc4random_uniform(UInt32(listOfQuestions.count)))
            let randomIndex = random()
            
            // Check that we are not swapping a Question with itself
            if randomIndex != currentQuestionIndex {
                // Swap the current Question with a random Question
                swap(&listOfQuestions[currentQuestionIndex], &listOfQuestions[randomIndex])
            }
        }
    }
    
    mutating func random() -> Int{
        
        let randomQuestionIndex = Int(arc4random_uniform(UInt32(listOfQuestions.count)))
        
        
        for i in 0..<UtilitiesPortal.record.count-1 {
            
            if randomQuestionIndex == UtilitiesPortal.record[i]{
                
                UtilitiesPortal.record.removeAtIndex(i)
                return randomQuestionIndex
            }
        }
        return 0
    }
    
    mutating func select(numberOfQuestion: Int) ->[LevelThreeQuestion]
    {
        if numberOfQuestion > listOfQuestions.count {
            return listOfQuestions
        }
        var selectedQuestions:[LevelThreeQuestion] = []
        for count in 0...numberOfQuestion{
            selectedQuestions.append(listOfQuestions[count])
            
        }
        selectedQuestions.append(listOfQuestions[listOfQuestions.count-1])
        
        listOfQuestions = selectedQuestions
        return listOfQuestions
    }
}