//
//  File.swift
//  
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import Foundation
import Rainbow

protocol Coverage {
    var title: String { get }
    var swift: Int { get }
    var objc: Int { get }
}

extension Coverage {
    var swiftPercentage: Int {
        [swift, objc].asPercentage[0]
    }
    var objcPercentage: Int {
        [swift, objc].asPercentage[1]
    }

    func write() {
        print("")
        print("> \(title)".bold)
        print(">> Swift: ".green.bold, terminator: "")
        print("\(swift) (\(swiftPercentage)%)".red.bold)
        print(">> Objective-C: ".green.bold, terminator: "")
        print("\(objc) (\(objcPercentage)%)".red.bold)
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
