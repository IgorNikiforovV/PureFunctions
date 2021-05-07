//
//  TaskVM.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 03.05.2021.
//

import UIKit

struct TaskVM {

    let id: Int
    let condition: NSAttributedString
    let image: UIImage
    let background: UIColor

}

extension TaskVM {

    init(task: Task) {
        id = task.id
        condition = Const.conditionAttributedText(task.condition)
        image = UIImage(named: task.image) ?? UIImage()
        background = UIColor(named: task.background) ?? UIColor.white
    }

}

extension TaskVM {

    enum Const {

        // condition
        static func conditionAttributedText(_ text: String) -> NSAttributedString {
            NSAttributedString(string: text, attributes: conditionAttributes)
        }

        static let conditionAttributes: [NSAttributedString.Key: Any]  = [
            NSAttributedString.Key.font: UIFont(name: K.TaskCell.titleFontName, size: 16)!,
            NSAttributedString.Key.foregroundColor: UIColor(named: K.TaskCell.titleColorName)!,
            NSAttributedString.Key.paragraphStyle: conditionParagraphStyle
        ]

        static let conditionParagraphStyle: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1.03
            return paragraphStyle
        }()

    }

}
