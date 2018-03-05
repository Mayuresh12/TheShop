//
//  wage.swift
//  The Shop
//
//  Created by Mayuresh Rao on 3/5/18.
//  Copyright © 2018 Mayuresh Rao. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
