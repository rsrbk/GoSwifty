//
//  Analyze.swift
//
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import ArgumentParser
import Rainbow

struct Analyze: ParsableCommand {

    public static let configuration = CommandConfiguration(abstract: "Analyze the swift/objc ratio")

    @Argument(help: "List of folders to analyze")
    private var paths: [String]

    func run() throws {
        let analyzer = Analyzer(with: paths)
        printIntro(analyzer: analyzer)
        analyzer.coverages.forEach { $0.write() }
    }

    private func printIntro(analyzer: Analyzer) {
        printTitle()
        print("")
        printMetricsCount(coverages: analyzer.coverages)
    }

    private func printTitle() {
        print(">>>>>>> GoSwifty - Swift coverage analyzer <<<<<<<".lightRed.bold)
    }

    private func printMetricsCount(coverages: [Coverage]) {
        print("We've analyzed \(paths.count) folder\(paths.count == 1 ? "" : "s") with \(coverages.count) metrics:".bold)
    }
}
