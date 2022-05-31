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
    var swiftPercentage: Double {
        [swift, objc].asPercentage[0]
    }
    var objcPercentage: Double {
        [swift, objc].asPercentage[1]
    }

    func write(decimals: Int) {
        print("")
        print("> \(title)".bold)
        print(">> Swift: ".green.bold, terminator: "")
        print("\(swift) (\(String(format: "%.\(decimals)f", swiftPercentage))%)".red.bold)
        print(">> Objective-C: ".cyan.bold, terminator: "")
        print("\(objc) (\(String(format: "%.\(decimals)f", objcPercentage))%)".red.bold)
    }
}
