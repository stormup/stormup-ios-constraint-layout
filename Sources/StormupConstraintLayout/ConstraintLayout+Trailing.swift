//
// Created by Eduardo Appolinario on 2021-10-23.
//

import UIKit

public extension ConstraintLayout {
    
    @discardableResult
    func trailingTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.configureConstraint(
            key: .trailingEqualTo,
            buildConstraint: { [weak self] in
                self?.owner?.trailingAnchor.constraint(equalTo: anchor, constant: margin)
            },
            priority: priority
        )
    }
    
    @discardableResult
    func trailingTo(_ anchor: NSLayoutXAxisAnchor, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingTo(
            anchor,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToTrailingOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingTo(view.trailingAnchor, withMargin: margin * -1)
    }
    
    @discardableResult
    func trailingToTrailingOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToTrailingOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingTo(layoutGuide.trailingAnchor, withMargin: margin * -1)
    }
    
    @discardableResult
    func trailingToTrailingOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToTrailingOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOf(view.safeAreaLayoutGuide, withMargin: margin)
    }
    
    @discardableResult
    func trailingToTrailingOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToTrailingOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.trailingToTrailingOf(superview, withMargin: margin, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func trailingToTrailingOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToTrailingOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.trailingToTrailingOfSafeArea(superview, withMargin: margin, withPriority: priority)
        }
        
        return self
    }
    
    @discardableResult
    func trailingToTrailingOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToTrailingOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToLeadingOf(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingTo(view.leadingAnchor, withMargin: margin * -1)
    }
    
    @discardableResult
    func trailingToLeadingOf(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOf(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToLeadingOf(_ layoutGuide: UILayoutGuide, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingTo(layoutGuide.leadingAnchor, withMargin: margin * -1)
    }
    
    @discardableResult
    func trailingToLeadingOf(_ layoutGuide: UILayoutGuide, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOf(
            layoutGuide,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToLeadingOfSafeArea(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOf(view.safeAreaLayoutGuide, withMargin: margin)
    }
    
    @discardableResult
    func trailingToLeadingOfSafeArea(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOfSafeArea(
            view,
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToLeadingOfParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.trailingToLeadingOf(superview, withMargin: margin)
        }
        
        return self
    }
    
    @discardableResult
    func trailingToLeadingOfParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOfParent(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
    
    @discardableResult
    func trailingToLeadingOfParentSafeArea(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        if let superview = self.owner?.superview {
            return self.trailingToLeadingOfSafeArea(superview, withMargin: margin)
        }
        
        return self
    }
    
    @discardableResult
    func trailingToLeadingOfParentSafeArea(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        self.trailingToLeadingOfParentSafeArea(
            withMargin: ConstraintLayout.marginProvider.getMarginSize(margin),
            withPriority: priority
        )
    }
    
    /*********************************************************************************************************************************************************************************/
}
