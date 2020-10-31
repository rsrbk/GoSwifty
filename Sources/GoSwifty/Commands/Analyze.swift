//
//  File.swift
//
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import ArgumentParser
import Rainbow

struct Analyze: ParsableCommand {

    public static let configuration = CommandConfiguration(abstract: "Analyze the swift/objc ratio")

    @Argument(help: "The root folder of your XCode project")
    private var path: String

    func run() throws {
        let analyzer = Analyzer(with: path)
        printIntro(analyzer: analyzer)
        analyzer.coverages.forEach { $0.write() }
    }

    private func printIntro(analyzer: Analyzer) {
        printTitle()
        print("")
        printMetricsCount(coverages: analyzer.coverages)
    }

    private func printTitle() {
        print(">>>>>>> GoSwifty - Swift coverage analyzer <<<<<<<".red.bold)
    }

    private func printMetricsCount(coverages: [Coverage]) {
        print("We've analyzed your folder with \(coverages.count) metrics:".bold)
    }
}
