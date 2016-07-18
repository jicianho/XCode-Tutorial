//
//  PlayGround.swift
//  JamesApp
//
//  Created by James Ho on 2016/7/15.
//  Copyright © 2016年 James Ho. All rights reserved.
//

import Foundation

class PlayGround {
    var question:Int = 23
    
    init(num:Int){
        randomQuestion(num: num)
    }
    
    func randomQuestion(num:Int){
        var balls:[Int] = [Int](repeating: 9, count: 10)
        for index in 0..<balls.count {
            balls[index] = index
        }
        var questions = [Int](repeating: 10, count: num )
        for count:Int in 0..<num {
            let uValue = UInt32(count)
            let selectedIndex:UInt32 = arc4random_uniform(10 - uValue)
            let intIndex:Int = Int(selectedIndex)
            questions[count] = balls[intIndex]
            balls.remove(at:intIndex)
            print(questions)
        }
        var qValue = 0.0
        for (index,q) in questions.enumerated() {
            qValue += Double(q) * pow(Double(10), Double(questions.count -  index-1))
        }
        self.question = Int(qValue)
    }
    
    func abGame(guess:Int) -> (a:Int, b:Int) {
        return (0,0)
    }
}
