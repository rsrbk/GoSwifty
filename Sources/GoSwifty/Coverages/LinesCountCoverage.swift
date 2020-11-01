//
//  LinesCountCoverage.swift
//  
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import Foundation

struct LinesCountCoverage: Coverage {
    let title = "Lines of code"
    let swift: Int
    let objc: Int
}
