//
//  main.swift
//  JamesApp
//
//  Created by James Ho on 2016/7/15.
//  Copyright © 2016年 James Ho. All rights reserved.
//

import Foundation

//var play = PlayGround(num:3)
//print("\(play.question)")

var center = Rectangle()
center.setXY(anX: 10, aY: 50)
center.center(inputWidth: 6, inputHeight: 8)


var items:[Rectangle] = []

var r1 = Rectangle()
r1.setXY(anX: 30, aY: 40)

var r2 = Rectangle()
r2.setXY(anX: 60, aY: 70)

var s1 = Square()
s1.side(inwidth: 20)

items.append(r1)
items.append(r2)
items.append(s1)

var sum = 0
for itemcount in items {
    sum += itemcount.area()
}

//var itemS:Square = items[2] can't square
var itemS:Rectangle = items[2]
var realSquare:Square? = itemS as? Square //father and son convers

print("\(realSquare?.area())")

var config = URLSessionConfiguration.default()
var session:URLSession = URLSession(configuration: config , delegate: FileHandler(), delegateQueue: OperationQueue())

var imageURL = NSURL(string: "https://url_to_image")!

var task:URLSessionDownloadTask = session.downloadTask(with: imageURL as URL)
task.resume()




