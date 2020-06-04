//
//  Presenter.swift
//  MasterDetailMVP
//
//  Created by Miguel on 04/06/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import Foundation

class Presenter {
    
    var model = Model<Date>()
    
    func addEntry() {
        model.insert(Date())
    }
    
    var numOfRows:Int {
        return model.count
    }
    
    func removeEntry(at idx:Int) {
        model.remove(at: idx)
    }
    
    subscript(idx:Int) -> String? {
        if let date = model[idx] {
            return date.description
        } else {
            return nil
        }
    }
    
}
