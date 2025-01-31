//
//  UIViewExt.swift
//  
//
//  Created by Eduardo Appolinario on 2022-07-19.
//

import UIKit

extension UIView {
    private static let association = ObjectAssociation<ConstraintLayout>()
    
    public var constraintLayout: ConstraintLayout {
        get {
            if let instance = UIView.association[self] {
                return instance
            } else {
                let instance = ConstraintLayout(self)
                UIView.association[self] = instance
                
                return instance
            }
        }
        set {
            UIView.association[self] = newValue
        }
    }
}
