//
//  ViewControllerExtension.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 04.05.2021.
//

import UIKit

protocol Presentable {

    static func present() -> Self?

}

extension UIViewController {

    static var className: String {
        String(describing: self)
    }

}

extension UIViewController: Presentable {

    static func present() -> Self? {
        if let storyboardIdentifier = Storyboard.name(identifier: className)?.rawValue {
            let storyboard = UIStoryboard(name: storyboardIdentifier, bundle: nil)
            return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as? Self
        }
        return nil
    }

}
