//
//  MonthController.swift
//  CollectionViewMiniLesson
//
//  Created by Jordan Nelson on 11/4/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import Foundation

class MonthController {
    
    static let sharedInstance = MonthController()
    
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    
    var numberOfDaysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]
    
    
}