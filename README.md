## Contents

- [Installation](#installation)
- [Usage](#usage)

---

## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

> Xcode 11+ is required to build SnapKit using Swift Package Manager.

To integrate SnapKit into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/vardant-a/UIForgeKit.git")
]
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate SnapKit into your project manually.

---

## Usage

### Quick Start

```swift

import UIForgeKit

final class ViewController: UIViewController {

    private lazy var forgeButtonOne = ForgeButton()

    private lazy var forgeButtonTwo = ForgeButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubviews(forgeButtonOne, forgeButtonTwo)
    }
}

```
