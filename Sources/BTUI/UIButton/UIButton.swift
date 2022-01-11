//
//  File.swift
//  
//
//  Created by Fellipe thufik Costa Gomes Hoashi on 23/12/21.
//

import UIKit

public class PrimaryButton: UIButton {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public init(title: String) {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        heightAnchor(equalTo: 50)
        
        backgroundColor = .primaryColor()
        
        setTitle(title, for: .normal)
        
        layer.cornerRadius = 8
    }
}
