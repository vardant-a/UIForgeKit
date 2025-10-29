//
//  View+EX.swift
//  UIForgeKit
//
//  Created by Aleksei Lokhin on 29.10.2025.
//

import UIKit

public extension UIView {
    /// Adds one or more subviews to the parent `UIView`.
    ///
    /// This method simplifies adding several subviews in a single call and
    /// automatically sets `translatesAutoresizingMaskIntoConstraints` to `false`
    /// for each of them.
    ///
    /// ```swift
    /// let view = UIView()
    /// let titleLabel = UILabel()
    /// let button = UIButton(type: .system)
    ///
    /// view.addSubviews(titleLabel, button)
    /// ```
    ///
    /// After calling this method, all subviews are ready to use Auto Layout.
    ///
    /// - Parameter subviews: One or more subviews to add to the view hierarchy.
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
    }

    /// Adds a vertical gradient layer to the view’s layer.
    ///
    /// This method creates and adds a `CAGradientLayer` that fills the view’s bounds, rendering a smooth vertical color transition from top to bottom.
    ///
    /// ```swift
    /// class ViewController: UIViewController {
    ///
    /// override func viewDidLoad() {
    ///     super.viewDidLoad()
    ///     view.addVerticalGradientLayer([.white, .black])
    /// }
    /// ```
    ///
    /// The gradient automatically spans the entire view and uses the provided colors in order from top (`startPoint` at y = 0) to bottom (`endPoint` at y = 1).
    ///
    /// - Parameter colors: An array of `UIColor` values defining the gradient colors, ordered from top to bottom.
    func addVerticalGradientLayer(_ colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.locations = [0.0, 1.0]
        layer.addSublayer(gradientLayer)
    }
}
