import UIKit

public extension NSDirectionalEdgeInsets {
    static func uniform(size: CGFloat) -> NSDirectionalEdgeInsets {
        return NSDirectionalEdgeInsets(top: size, leading: size, bottom: size, trailing: size)
    }
    
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
    }
    
    static func xxxSmall() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xxxSmall))
    }
    
    static func xxSmall() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xxSmall))
    }
    
    static func xSmall() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xSmall))
    }
    
    static func small() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.small))
    }
    
    static func `default`() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.default))
    }
    
    static func large() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.large))
    }
    
    static func xLarge() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xLarge))
    }
    
    static func xxLarge() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xxLarge))
    }
    
    static func xxxLarge() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xxxLarge))
    }
    
    static func xxxxLarge() -> NSDirectionalEdgeInsets {
        return .uniform(size: ConstraintLayout.marginProvider.getMarginSize(.xxxxLarge))
    }
}
