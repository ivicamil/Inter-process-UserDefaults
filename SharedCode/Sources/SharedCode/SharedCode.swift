import UIKit

public extension UserDefaults {
    
    private static let colorKey = "selectedColor"
    
    /// Add `App Group` capability to both targets and add the targets to the same group.
    /// Set `colorPickerGroupID` to the name of that group.
    private static let colorPickerGroupID = "REPLACE WITH ACTUAL GROUP NAME"
    
    static var colorPickerGroup: UserDefaults? {
        return UserDefaults(suiteName: UserDefaults.colorPickerGroupID)
    }
    
   @objc dynamic var selectedColor: UIColor? {
        get {
            guard let colorData = data(forKey: UserDefaults.colorKey) else {
                return nil
            }
            return NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
        }
        set {
            var colorData: Data? = nil
            if let color = newValue {
                colorData = NSKeyedArchiver.archivedData(withRootObject: color)
            }
            set(colorData, forKey: UserDefaults.colorKey)
        }
    }
}
