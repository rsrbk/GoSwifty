import ArgumentParser

struct GoSwifty: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "A command-line tool to measure the swift coverage in your project",
        subcommands: [Analyze.self])

    init() { }
}

GoSwifty.main()
