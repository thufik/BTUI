//
//  InputTextfield.swift
//  
//
//  Created by Fellipe thufik Costa Gomes Hoashi on 22/12/21.
//

import UIKit

public class InputTextField: UITextField {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public init() {
        super.init(frame: .zero)
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.gray.cgColor
        
        translatesAutoresizingMaskIntoConstraints = false
        
        heightAnchor(equalTo: 50)
    }
}

