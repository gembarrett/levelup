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
        guard let playerStats = json?["playerstats"] as? [String:AnyObject] else {
            return
        }
        
        // array of dictionaries
        guard let stats = playerStats["stats"] as? [[String:AnyObject]] else {
            return
        }

        var statsDict = [String: Int]()
        for stat in stats {
            let name = stat["name"] as! String
            let value = stat["value"] as! Int
            statsDict[name] = value
        }
        
        
        let kills = Data(max: 100.0)
        kills.scoutInt = statsDict["Scout.accum.iNumberOfKills"] ?? 0
        kills.demomanInt = statsDict["Demoman.accum.iNumberOfKills"] ?? 0
        kills.pyroInt = statsDict["Pyro.accum.iNumberOfKills"] ?? 0
        dataArray.append(kills)
        
        let damage = Data(max: 50000.0)
        damage.scoutInt = statsDict["Scout.accum.iDamageDealt"] ?? 0
        damage.demomanInt = statsDict["Demoman.accum.iDamageDealt"] ?? 0
        damage.pyroInt = statsDict["Pyro.accum.iDamageDealt"] ?? 0
        dataArray.append(damage)
        
        let points = Data(max: 200.0)
        points.scoutInt = statsDict["Scout.accum.iPointsScored"] ?? 0
        points.demomanInt = statsDict["Demoman.accum.iPointsScored"] ?? 0
        points.pyroInt = statsDict["Pyro.accum.iPointsScored"] ?? 0
        dataArray.append(points)

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