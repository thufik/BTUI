//
//  InputTextfield.swift
//  
//
//  Created by Fellipe thufik Costa Gomes Hoashi on 22/12/21.
//

import UIKit

public class InputTextView: UIView {
    
    lazy var textField: InputTextField = {
        let textField = InputTextField(placeHolderAnimation: placeHolderAnimation)
        
        return textField
    }()
    
    lazy var placeHolderLabel: UILabel = {
        let label = UILabel()
        
        label.text = placeHolder
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var placeHolderLabelLeadingConstraint: NSLayoutConstraint = {
        NSLayoutConstraint(item: placeHolderLabel, attribute: .leading, relatedBy: .equal, toItem: textField, attribute: .leading, multiplier: 1.0, constant: 10)
    }()
    
    private lazy var placeHolderLabelCenterXConstraint: NSLayoutConstraint = {
        NSLayoutConstraint(item: placeHolderLabel, attribute: .centerX, relatedBy: .equal, toItem: textField, attribute: .centerX, multiplier: 1.0, constant: 0)
    }()
    
    lazy var placeHolderAnimation: () -> Void = { [self] in
        placeHolderLabelLeadingConstraint.isActive = false
        placeHolderLabelCenterXConstraint.isActive = false
        
        UIView.animate(withDuration: 0.5) {
            placeHolderLabel.leadingAnchor(equalTo: self.leadingAnchor, constant: 10)
            placeHolderLabel.topAnchor(equalTo: self.topAnchor, constant: 5)
        }
    }
    
    let placeHolder: String
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public init(placeHolder: String) {
        self.placeHolder = placeHolder
        
        super.init(frame: .zero)
        
        setupView()
    }
}


extension InputTextView: LubyViewCode {
    public func setupHierarchy() {
        addSubview(textField)
        addSubview(placeHolderLabel)
    }
    
    public func setupConstraints() {
        textField.leadingAnchor(equalTo: self.leadingAnchor, constant: 15)
        textField.trailingAnchor(equalTo: self.trailingAnchor, constant: -15)
        textField.topAnchor(equalTo: self.topAnchor, constant: 15)
        textField.bottomAnchor(equalTo: self.bottomAnchor, constant: -15)
        
        placeHolderLabelLeadingConstraint.isActive = true
        placeHolderLabelCenterXConstraint.isActive = true
    }
    
    public func setupConfigurations() {
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .textFieldBackgroundColor()
        
        heightAnchor(equalTo: 50)
    }
}

class InputTextField: UITextField {
    public var placeHolderAnimation: () -> Void
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public init(placeHolderAnimation: @escaping () -> Void) {
        self.placeHolderAnimation = placeHolderAnimation
        
        super.init(frame: .zero)
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        
        translatesAutoresizingMaskIntoConstraints = false
        
        //heightAnchor(equalTo: 50)
    }
    
    override func becomeFirstResponder() -> Bool {
        super.becomeFirstResponder()
        
        placeHolderAnimation()
        
        return true
    }
}

