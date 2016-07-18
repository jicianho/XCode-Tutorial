//
//  Rectangle.swift
//  JamesApp
//
//  Created by James Ho on 2016/7/15.
//  Copyright © 2016年 James Ho. All rights reserved.
//

import Foundation

class Rectangle{
    var x:Float = 10
    var y:Float = 10
    var width:Float = 10
    var height:Float = 10
    
    func setXY(anX:Float,aY:Float){
        self.x = anX
        self.y = aY
    }
    
    func center(inputWidth:Float, inputHeight:Float){
        self.width = inputWidth
        self.height = inputHeight
        
        let centerX = x + width/2
        let centerY = y + height/2
        
        print("\(centerX),\(centerY)")
    }
    
    func area() -> (Int){

        let area_count:Int = Int(width * height)
        return area_count
    }
    
}
