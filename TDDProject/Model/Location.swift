//
//  Location.swift
//  TDDProject
//
//  Created by yamada.ryo on 2018/11/28.
//  Copyright © 2018年 yamada.ryo. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?

    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}
