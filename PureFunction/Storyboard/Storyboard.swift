//
//  Storyboard.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 04.05.2021.
//

import UIKit

enum Storyboard: String {

    case main = "Main"

    static func name(identifier controller: String) -> Storyboard? {
        switch controller {
        case TasksViewController.className,
             TaskDetailViewController.className:
            return .main
        default:
            return nil
        }
    }

}
