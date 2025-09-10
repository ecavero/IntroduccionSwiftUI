//
//  Item.swift
//  IntroduccionSwiftUI
//
//  Created by user278712 on 9/9/25.
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
