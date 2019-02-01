# Installation

### CocoaPods

```bash
pod 'FastLayout'
```

## Usage

### Quick Start

```swift
import FastLayout

class MyViewController: UIViewController {

    let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(grayView)
        grayView.fill(toView: view)
        
        view.addSubview(redView)
        redView.quickLayout(leding: view.leadingAnchor,
                           centerY: view.centerYAnchor,
                           height: 100, width: 100,
                           leadingSpacing: 20, centerYSpacing: 20)
        
    }

}
```
