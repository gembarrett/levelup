//
//  SteamData.swift
//  levelup
//
//  Created by Gemma Barrett on 01/09/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import Foundation

class SteamData {
    
    
    let file = "tf2.json"
    let dirs : [String] = NSSearchPathForDirectoriesInDomains(
        NSSearchpathDirectory.DocumentDirectory,
        NSSearchPathDomainMask.AllDomainMask,
        true) as [String]
    
//    if (dirs != nil) {
    let directories: [String] = dirs
    let dir = directories[0]
    let path = dir.stringByAppendingPathComponent(file)
//    }
    
    var data = NSData(contentsOfFile:path, options: nil, error: nil)
    println("jsonData \(data)")
//    println("jsonData \(jsonData)")
//    
//    var json: Array!
//    do {
//        json = try NSJSONSerialization.JSONObjectWithData(JSONData, options: NSJSONReadingOptions()) as? Array
//    } catch {
//        print(error)
//    }
//    
//    guard let item = json[0] as? [String: AnyObject],
//    let person = item["person"] as? [String: AnyObject],
//    let age = person["age"] as? Int else {
//    return;
//    }
//    print("Dani's age is \(age)")
}