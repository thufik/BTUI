import UIKit

extension UITextField {
    class func attributedTextField(frame: CGRect) -> UITextField {
        let textField = UITextField(frame: frame)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 25
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 2.0
        textField.layer.masksToBounds = true
        /* Paddings */
        //textField.leftView = UIView(frame: CGRectMake(0, 0, 25, 0))
        textField.leftViewMode = .always
        //textField.rightView = UIView(frame: CGRectMake(0, 0, 25, 0))
        textField.rightViewMode = .always
        /* Place Holder Formating */
//        textField attributes = [
//                          NSForegroundColorAttributeName: UIColor(r: 34, g: 140, b: 204, a: 1),
//                          NSFontAttributeName : UIFont(name: "HelveticaNeue-Thin", size: 16)! // Note the !
//                          ]
//        textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes:attributes)
        return textField
    }
}


