//
// Created by Eduardo Appolinario on 2021-10-19.
//

import UIKit

public class ConstraintLayout {
    public static var marginProvider: ConstraintLayoutMarginProvider = ConstraintLayoutDefaultMarginProvider()

    public enum Keys: String {
        case widthEqualTo = "widthEqualTo"
        case widthEqualToConstant = "widthEqualToConstant"
        case widthGreaterThanOrEqualToConstant = "widthGreaterThanOrEqualToConstant"
        case widthGreaterThanOrEqualTo = "widthGreaterThanOrEqualTo"
        case widthLessThanOrEqualToConstant = "widthLessThanOrEqualToConstant"
        case widthLessThanOrEqualTo = "widthLessThanOrEqualTo"

        case heightEqualTo = "heightEqualTo"
        case heightEqualToConstant = "heightEqualToConstant"
        case heightGreaterThanOrEqualToConstant = "heightGreaterThanOrEqualToConstant"
        case heightGreaterThanOrEqualTo = "heightGreaterThanOrEqualTo"
        case heightLessThanOrEqualToConstant = "heightLessThanOrEqualToConstant"
        case heightLessThanOrEqualTo = "heightLessThanOrEqualTo"

        case leadingEqualTo = "leadingEqualTo"
        case trailingEqualTo = "trailingEqualTo"
        case leftEqualTo = "leftEqualTo"
        case rightEqualTo = "rightEqualTo"
        case topEqualTo = "topEqualTo"
        case bottomEqualTo = "bottomEqualTo"

        case centerXEqualTo = "centerXEqualTo"
        case centerYEqualTo = "centerYEqualTo"
    }

    public let id = UUID()
    
    public weak var owner: UIView?
    
    private var debugIdentifier: String? = nil

    /// If true, as soon as a constraint is added, it will be automatically activated (in some cases it might cause loss of performance)
    private var shouldAutoActivate = true
    
    public init(_ view: UIView) {
        self.owner = view
    }
    
    var constraints = [ConstraintLayout.Keys: NSLayoutConstraint]()

    public func checkIfAutoLayoutIsEnabled() {
        if owner?.translatesAutoresizingMaskIntoConstraints == true {
            owner?.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public func removeConstraint(key: Keys) {
        if let constraint = self.constraints[key] {
            constraint.isActive = false
            self.owner?.removeConstraint(constraint)
        }
        
        self.constraints.removeValue(forKey: key)

        let constraintIdentifier: String!

        if let debugIdentifier = self.debugIdentifier {
            constraintIdentifier = "\(key.rawValue)-\(debugIdentifier)"
        } else {
            constraintIdentifier = key.rawValue
        }
                
        if let existingConstraint = self.owner?.constraints.first(where: { $0.identifier == constraintIdentifier }) {
            existingConstraint.isActive = false
            self.owner?.removeConstraint(existingConstraint)
        }
    }
    
    /// Should only be used during Development process
    /// - Parameter debugIdentifier: This identifier will be added as a suffix to the constraint name
    public func setDebugIdentifier(_ debugIdentifier: String) -> Self {
        self.debugIdentifier = debugIdentifier
        
        return self
    }
    
    /// Disables the option that activates the constraint as soon as they are added/created
    /// User will have to manually call .activate()
    @discardableResult
    public func disableAutoActivation() -> Self {
        self.shouldAutoActivate = false
        
        return self
    }
    
    /// Enables the option to activates the constraint as soon as they are added/created
    @discardableResult
    public func enableAutoActivation() -> Self {
        self.shouldAutoActivate = true
        
        return self
    }

    @discardableResult
    public func resetAllConstraints() -> ConstraintLayout {
        guard let owner = owner else {
            return self
        }
        
        owner.removeConstraints(owner.constraints)
        
        return self
    }
    
    @discardableResult
    public func eraseConstraints(except: (NSLayoutConstraint) -> Bool) -> ConstraintLayout {
        for constraint in owner?.constraints ?? [] {
            if (except(constraint)) {
                continue
            }
            self.owner?.removeConstraint(constraint)
        }
        return self
    }
    
    public func activate() {
        let allConstraints = Array(self.constraints.values)
        NSLayoutConstraint.activate(allConstraints)
    }
    
    func runIf(_ condition: Bool,_ handler: (Self) -> Void) -> Self {
        guard condition else {
            return self
        }
        handler(self)
        return self
    }
    
    func runIf(_ condition: () -> Bool,_ handler: (Self) -> Void) -> Self {
        guard condition() else {
            return self
        }
        handler(self)
        return self
    }
    
    public func printAllConstraints() {
        self.constraints.forEach { (key, constraint) in
            debugPrint("\(key) - \(constraint)")
        }
    }

    public func configureConstraint(
        key: ConstraintLayout.Keys,
        buildConstraint: () -> NSLayoutConstraint?,
        priority: Float? = nil
    ) -> ConstraintLayout {
        self.checkIfAutoLayoutIsEnabled()
        self.removeConstraint(key: key)
        
        guard
            let constraint = buildConstraint()
        else {
            return self
        }
        
        let constraintIdentifier: String!
        
        if let debugIdentifier = self.debugIdentifier {
            constraintIdentifier = "\(key.rawValue)-\(self.id)-\(debugIdentifier)"
        } else {
            constraintIdentifier = "\(key.rawValue)-\(self.id)"
        }
        
        constraint.identifier = constraintIdentifier
        if let priority = priority {
            constraint.priority = UILayoutPriority(priority)
        }
        constraint.isActive = self.shouldAutoActivate
        self.constraints[key] = constraint
        
        return self
    }

    public enum Margin: CGFloat {
        case none = 0
        case `default` = 16
        
        case small = 12
        case xSmall = 8
        case xxSmall = 4
        case xxxSmall = 2
        
        case large = 20
        case xLarge = 24
        case xxLarge = 28
        
        case xxxLarge = 32
        case xxxxLarge = 48
        
        public func negative() -> CGFloat {
            return self.rawValue * -1
        }
    }
}

public protocol ConstraintLayoutMarginProvider {
    func getMarginSize(_ margin: ConstraintLayout.Margin) -> CGFloat
}

public struct ConstraintLayoutDefaultMarginProvider: ConstraintLayoutMarginProvider {
    public func getMarginSize(_ margin: ConstraintLayout.Margin) -> CGFloat {
        return margin.rawValue
    }
}
