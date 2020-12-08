
import UIKit
import SharedCode

class ViewController: UIViewController {

    private let defaults = UserDefaults.colorPickerGroup
    
    private var observation: NSKeyValueObservation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Color Receiver"
        
        observation = defaults?.observe(\.selectedColor, options: [.initial, .new]) { [weak self] defaults, change in
            self?.view.layer.backgroundColor = defaults.selectedColor?.cgColor
        }
    }
}
