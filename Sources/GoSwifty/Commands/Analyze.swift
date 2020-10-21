//
//  File.swift
//
//
//  Created by Ruslan Serebriakov on 5/5/20.
//

import ArgumentParser
import TSCBasic

struct Analyze: ParsableCommand {

    public static let configuration = CommandConfiguration(abstract: "Analyze the swift/objc ratio")

    @Argument(help: "The root folder of your XCode project")
    private var path: String

    func run() throws {
        guard let tc = TerminalController(stream: stdoutStream) else { return }
        let analyzer = Analyzer(with: path)

        printIntro(with: tc, analyzer: analyzer)
        analyzer.coverages.forEach { $0.write(with: tc) }
    }

    private func printIntro(with tc: TerminalController, analyzer: Analyzer) {
        printTitle(with: tc)
        tc.endLine()
        tc.endLine()
        printMetricsCount(with: tc, coverages: analyzer.coverages)
        tc.endLine()
    }

    private func printTitle(with tc: TerminalController) {
        tc.write(">>>>>>> ", inColor: .red, bold: true)
        tc.write("GoSwifty - Swift coverage analyzer", inColor: .red, bold: true)
        tc.write(" <<<<<<<", inColor: .red, bold: true)
    }

    private func printMetricsCount(with tc: TerminalController, coverages: [Coverage]) {
        tc.write("We've analyzed your folder with \(coverages.count) metrics:", inColor: .noColor, bold: true)
    }
}
