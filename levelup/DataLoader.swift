//
//  DataLoader.swift
//  levelup
//
//  Created by Gemma Barrett on 06/09/2016.
//  Copyright © 2016 Gem Barrett. All rights reserved.
//

import Foundation

class DataLoader {
    var dataArray = [Data]()

    init() {
        self.loadData()
    }
    private func loadData() {
        
        let json = self.jsonObject()
        
//        let kills = Data()
//        kills.scoutInt = 20
//        kills.demomanInt = 20
//        kills.pyroInt = 20
//        kills.scoutFloat = 0.2
//        kills.demomanFloat = 0.2
//        kills.pyroFloat = 0.2
//        dataArray.append(kills)
//        
//        let damage = Data()
//        damage.scoutInt = 10
//        damage.demomanInt = 10
//        damage.pyroInt = 10
//        damage.scoutFloat = 0.1
//        damage.demomanFloat = 0.1
//        damage.pyroFloat = 0.1
//        dataArray.append(damage)
//        
//        let points = Data()
//        points.scoutInt = 5
//        points.demomanInt = 5
//        points.pyroInt = 5
//        points.scoutFloat = 0.05
//        points.demomanFloat = 0.05
//        points.pyroFloat = 0.05
//        dataArray.append(points)

    }
    
    private func jsonObject() -> [String: AnyObject]? {
        guard let dataUrl = NSBundle.mainBundle().URLForResource("tf2", withExtension: "json") else {
            return nil
        }
        guard let data = NSData(contentsOfURL: dataUrl) else {
            return nil
        }
        
        return (try? NSJSONSerialization.JSONObjectWithData(data, options: [])) as? [String: AnyObject]
    }
}