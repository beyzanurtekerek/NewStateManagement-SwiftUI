//
//  Item.swift
//  NewStateManagementSwiftUI
//
//  Created by Beyza Nur Tekerek on 6.10.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
