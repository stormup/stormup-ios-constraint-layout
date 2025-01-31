//
// Created by Eduardo Appolinario on 2021-10-23.
//

import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func heightEqualsTo(_ layoutDimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(equalTo: layoutDimension, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func height(_ height: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(equalToConstant: height)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightEqualsTo(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.heightEqualsTo(view.heightAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func heightEqualsTo(_ layoutGuide: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.heightEqualsTo(layoutGuide.heightAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func heightEqualsToSafeArea(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.heightEqualsTo(view.safeAreaLayoutGuide, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func heightEqualsParent(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.heightEqualsTo(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func heightEqualsParentSafeArea(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.heightEqualsToSafeArea(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func heightEqualsWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.heightEqualsTo(view.widthAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func heightEqualsWidth(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let owner = owner else {
            return self
        }
        
        return self.heightEqualsWidth(owner, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func heightGreaterThanOrEqualTo(_ constant: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightGreaterThanOrEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightGreaterThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightGreaterThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightGreaterThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightGreaterThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(greaterThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightLessThanOrEqualTo(_ constant: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightLessThanOrEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(lessThanOrEqualToConstant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightLessThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightLessThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func heightLessThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .heightLessThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.heightAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
}
