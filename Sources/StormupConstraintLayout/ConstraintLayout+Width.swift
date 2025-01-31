//
// Created by Eduardo Appolinario on 2021-10-23.
//

import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func widthEqualsTo(_ layoutDimension: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(equalTo: layoutDimension, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func width(_ width: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(equalToConstant: width)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthEqualsTo(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.widthEqualsTo(view.widthAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func widthEqualsTo(_ layoutGuide: UILayoutGuide, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.widthEqualsTo(layoutGuide.widthAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func widthEqualsToSafeArea(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.widthEqualsTo(view.safeAreaLayoutGuide, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func widthEqualsParent(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.widthEqualsTo(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func widthEqualsParentSafeArea(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.widthEqualsToSafeArea(superview, multiplier: multiplier, constant: constant, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func widthEqualsHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.widthEqualsTo(view.heightAnchor, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func widthEqualsHeight(multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        guard let owner = owner else {
            return self
        }
        
        return self.widthEqualsHeight(owner, multiplier: multiplier, constant: constant, withPriority: priority)
    }
    
    @discardableResult
    func widthGreaterThanOrEqualTo(_ constant: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthGreaterThanOrEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthGreaterThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthGreaterThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthGreaterThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthGreaterThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(greaterThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthLessThanOrEqualTo(_ constant: CGFloat, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthLessThanOrEqualToConstant,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(lessThanOrEqualToConstant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthLessThanOrEqualToHeight(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthLessThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func widthLessThanOrEqualToWidth(_ view: UIView, multiplier: CGFloat = 1, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .widthLessThanOrEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: multiplier, constant: constant)
            },
            priority: priority
        )
    }
}
