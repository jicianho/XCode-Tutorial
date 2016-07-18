//
//  FileHandler.swift
//  JamesApp
//
//  Created by James Ho on 2016/7/15.
//  Copyright © 2016年 James Ho. All rights reserved.
//

import Cocoa

class FileHandler: NSObject, URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location:URL){
    print("file in \(location)")
    }
    



}
