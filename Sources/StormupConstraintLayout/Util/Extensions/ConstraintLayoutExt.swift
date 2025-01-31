//
//  ConstraintLayoutExt.swift
//  
//
//  Created by Eduardo Appolinario on 2022-08-03.
//

import UIKit

public extension ConstraintLayout {
    @discardableResult
    func matchParent(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOfParent(withMargin: margin, withPriority: priority)
            .bottomToBottomOfParent(withMargin: margin, withPriority: priority)
            .leftToLeftOfParent(withMargin: margin, withPriority: priority)
            .rightToRightOfParent(withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchParent(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchParent(withMargin: marginSize, withPriority: priority)
    }

    @discardableResult
    func matchParentHorizontally(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leftToLeftOfParent(withMargin: margin)
            .rightToRightOfParent(withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchParentHorizontally(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchParentHorizontally(withMargin: marginSize, withPriority: priority)
    }
    
    @discardableResult
    func matchParentVertically(withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOfParent(withMargin: margin, withPriority: priority)
            .bottomToBottomOfParent(withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchParentVertically(withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchParentVertically(withMargin: marginSize, withPriority: priority)
    }
    
    @discardableResult
    func match(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOf(view, withMargin: margin, withPriority: priority)
            .bottomToBottomOf(view, withMargin: margin, withPriority: priority)
            .leftToLeftOf(view, withMargin: margin, withPriority: priority)
            .rightToRightOf(view, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchHorizontally(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.leftToLeftOf(view, withMargin: margin, withPriority: priority)
            .rightToRightOf(view, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchHorizontally(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchHorizontally(view, withMargin: marginSize, withPriority: priority)
    }
    
    @discardableResult
    func matchVertically(_ view: UIView, withMargin margin: CGFloat = 0, withPriority priority: Float? = nil) -> ConstraintLayout {
        return self.topToTopOf(view, withMargin: margin, withPriority: priority)
            .bottomToBottomOf(view, withMargin: margin, withPriority: priority)
    }
    
    @discardableResult
    func matchVertically(_ view: UIView, withMargin margin: Margin, withPriority priority: Float? = nil) -> ConstraintLayout {
        let marginSize = ConstraintLayout.marginProvider.getMarginSize(margin)
        return self.matchVertically(view, withMargin: marginSize, withPriority: priority)
    }
}
