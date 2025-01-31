//
// Created by Eduardo Appolinario on 2021-10-23.
//

import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func centerXTo(_ anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .centerXEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.centerXAnchor.constraint(equalTo: anchor, constant: constant)
            },
            priority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToCenterXOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(view.centerXAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToCenterXOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(
            layoutGuide.centerXAnchor,
            constant: margin,
            withPriority: priority
        )
    }
    
    @discardableResult
    func centerXToCenterXOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToCenterXOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToCenterXOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToCenterXOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToCenterXOf(superview, withMargin: margin)
        }
        
        return self
    }
    
    @discardableResult
    func centerXToCenterXOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToCenterXOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToCenterXOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func centerXToCenterXOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToCenterXOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToLeftOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(view.leftAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToLeftOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(layoutGuide.leftAnchor, constant: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToLeftOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToLeftOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToLeftOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToLeftOfParent(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToLeftOf(superview, withMargin: margin, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func centerXToLeftOfParent(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOfParent(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToLeftOfParentSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToLeftOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func centerXToLeftOfParentSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToLeftOfParentSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToRightOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(view.rightAnchor, constant: margin * -1, withPriority: priority)
    }
    
    @discardableResult
    func centerXToRightOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToRightOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXTo(layoutGuide.rightAnchor, constant: margin * -1, withPriority: priority)
    }
    
    @discardableResult
    func centerXToRightOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToRightOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToRightOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToRightOf(view.safeAreaLayoutGuide, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func centerXToRightOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.centerXToRightOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToRightOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToRightOf(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerXToRightOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func centerXToRightOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.centerXToRightOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        return self
    }
    
    @discardableResult
    func centerXToRightOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.centerXToRightOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
}
