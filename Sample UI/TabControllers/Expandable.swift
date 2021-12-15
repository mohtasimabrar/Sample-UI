//
//  Expandable.swift
//  Sample UI
//
//  Created by BS236 on 14/12/21.
//

import Foundation


class Expandable {
    var title: String
    var options: [String]
    var isOpen: Bool = false
    
    init(title: String, options: [String], isOpen: Bool = false) {
        self.title = title
        self.options = options
        self.isOpen = isOpen
    }
}
