//
//  File.swift
//  
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import Foundation
import TSCBasic

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

    func write(with tc: TerminalController) {
        tc.endLine()
        tc.write("> \(title)", inColor: .noColor, bold: true)
        tc.endLine()
        tc.write(">> Swift: ",  inColor: .green, bold: true)
        tc.write("\(swift) (\(swiftPercentage)%)",  inColor: .red, bold: true)
        tc.endLine()
        tc.write(">> Objective-C: ",  inColor: .cyan, bold: true)
        tc.write("\(objc) (\(objcPercentage)%)",  inColor: .red, bold: true)
        tc.endLine()
    }
}
