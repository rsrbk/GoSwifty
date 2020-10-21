# GoSwifty

A command line tool which gives you a comprehensive analysis of your codebase in terms of Objective-C/Swift ratio.

<p align="center">
    <img src="https://github.com/rsrbk/GoSwifty/blob/master/logo.png?raw=true" alt="Blue"/>
</p>

`GoSwifty` is especially useful to track the progress of your migration from Objective-C to Swift. So far you can measure your project towards four metrics:
- Swift files count vs Objective-C files count.
- Swift lines of code vs Objective-C lines of code.
- Swift classes count vs Objective-C classes count.
- Swift structs count vs Objective-C structs count.

## Example (Wikipedia iOS App):

## Installation
### Option 1 (via [Mint](https://github.com/yonaskolb/Mint))
1. Install Mint via Homebrew:
```sh
pod 'SmileToUnlock'
```
or manually:
```sh
git clone https://github.com/yonaskolb/Mint.git
cd Mint
swift run mint install yonaskolb/mint
```
2. Run `GoSwifty` via Mint:
```sh
swift run mint install rsrbk/GoSwifty
```
### Option 2 (manually)
1. Clone the repo:
```sh
git clone https://github.com/rsrbk/GoSwifty.git
```
2. Open the folder and build the command line tool via Swift Package Manager
```sh
cd GoSwifty
swift build -c release
cd .build/release
cp -f GoSwifty /usr/local/bin/go-swifty
```
