
import UIKit
import SharedCode

class ColorPickerController: UIViewController {

    private let defaults = UserDefaults.colorPickerGroup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Color Picker"
    }
}

private extension ColorPickerController {
    
    @IBAction func pickColor(_ sender: UIButton) {
        let picker = UIColorPickerViewController()
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
}

extension ColorPickerController: UIColorPickerViewControllerDelegate {
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        defaults?.selectedColor = viewController.selectedColor
    }
}
