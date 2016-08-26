//
//  LevelOneQuestionList.swift
//  Rmitium
//
//  Created by Thinh Tran on 19/08/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
struct LevelOneQuestionList {
    var listOfQuestions:[LevelOneQuestion]
    var index = 0
    
    
    init(){
        listOfQuestions = LevelOneQuestion.getQuestions()
        shuffle()
        select(9)
    }
    
    mutating func shuffle() {
        
        // Perform the swap operation equal to the number of Questions in the list
        for currentQuestionIndex in 1..<listOfQuestions.count {
            
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
       
        
        for i in 1..<UtilitiesPortal.record.count{
            
            if randomQuestionIndex == UtilitiesPortal.record[i]{
                
                UtilitiesPortal.record.removeAtIndex(i)
                return randomQuestionIndex
            }
        }
        return 0
    }
    
    mutating func select(numberOfQuestion: Int) ->[LevelOneQuestion]
    {
        if numberOfQuestion > listOfQuestions.count {
            return listOfQuestions
        }
            var selectedQuestions:[LevelOneQuestion] = []
        for count in 0...numberOfQuestion-1{
            selectedQuestions.append(listOfQuestions[count])
            
        }
        
        listOfQuestions = selectedQuestions
        return listOfQuestions
    }
}