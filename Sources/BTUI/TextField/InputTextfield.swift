//
//  InputTextfield.swift
//  
//
//  Created by Fellipe thufik Costa Gomes Hoashi on 22/12/21.
//

import UIKit

class InputTextField: UITextField {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    init() {
        super.init(frame: .zero)
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.gray.cgColor
    }
}

