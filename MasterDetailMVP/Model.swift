//
//  Model.swift
//  MasterDetailMVP
//
//  Created by Miguel on 04/06/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import Foundation

struct Model<T> {
    
    private var objects:[T] = []
    
    mutating func insert(_ elem:T) {
        objects.insert(elem, at: 0)
    }
    
    mutating func remove(at idx:Int) {
        guard objects.indices.contains(idx) else {
            return
        }
        objects.remove(at: idx)
    }
}
