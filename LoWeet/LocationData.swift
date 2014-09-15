//
//  LocationData.swift
//  LoWeet
//
//  Created by Katlyn Schwaebe on 9/15/14.
//  Copyright (c) 2014 Katlyn Schwaebe. All rights reserved.
//

import UIKit
let _locationData : LocationData = {
    
    LocationData()
}()

class LocationData: NSObject {
    var locations: [[String:AnyObject]] = []

    
    class func mainData() ->LocationData{
     
        return _locationData
    }
    func addLocation(location: [String:AnyObject]) {
        self.locations += [location]
        let nc = NSNotificationCenter.defaultCenter()
        nc.postNotificationName("tweetLocationsUpdated", object: nil, userInfo: nil)
    }
        
        

}
