//
//  Utils.swift
//  
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import Foundation

func numberOfLines(at path: String) -> Int? {
    do {
        let content = try String(contentsOfFile: path)
        return content.components(separatedBy: "\n").count
    } catch {
        return nil
    }
}

func numberOfOccurences(at path: String, word: String) -> Int? {
    do {
        let content = try String(contentsOfFile: path)
        return content.components(separatedBy: word).count-1
    } catch {
        return nil
    }
}

extension Array where Element == Int {
    var asPercentage: [Double] {
        self.map { $0 == 0 ? 0 : (Double($0) / Double(self.reduce(0, +))) * 100 }
    }
}
