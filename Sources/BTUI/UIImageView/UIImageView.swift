//
//  UIImageView.swift
//  
//
//  Created by Fellipe thufik Costa Gomes Hoashi on 23/12/21.
//

import UIKit

public class headerImageView: UIImageView {
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    public init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        image = UIImage(named: "headerImage")
    }
}



