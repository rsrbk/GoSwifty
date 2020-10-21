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

## Usage
Simply:
```sh
go-swifty analyze /Your/Folder/Path
```

## Follow me on twitter
I promise it's gonna be more interesting stuff there! [@rsrbk123](https://twitter.com/rsrbk123)

## Check out my other libraries

[SmileToUnlock](https://github.com/rsrbk/SmileToUnlock) - This library uses ARKit Face Tracking in order to catch a user's smile to unlock the screen.<br>
[SRCountdownTimer](https://github.com/rsrbk/SRCountdownTimer) - a simple circle countdown with a configurable timer.<br>
[SRAttractionsMap](https://github.com/rsrbk/SRAttractionsMap) - the map with attractions on which you can click and see the full description.

## License
 MIT License

 Copyright (c) 2017 Ruslan Serebriakov <rsrbk1@gmail.com>

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
