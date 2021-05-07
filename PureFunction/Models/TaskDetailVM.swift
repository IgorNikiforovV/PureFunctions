//
//  TaskDetailVM.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 04.05.2021.
//

import UIKit

struct TaskDetailVM {

    let id: Int
    let conditionTitle: NSAttributedString
    let condition: NSAttributedString
    let inputDataTitle: NSAttributedString?
    let inputData: NSAttributedString?
    let resultTitle: NSAttributedString
    let result: NSAttributedString
    var isInputDataHidden: Bool {
        inputData == nil
    }

}

extension TaskDetailVM {

    init(task: Task) {
        id = task.id
        conditionTitle = Const.conditionTitleAttributedText
        condition = Const.conditionAttributedText(task.condition)
        inputDataTitle = Const.inputDataTitleAttributedText
        inputData = Const.inputDataAttributedText(task.inputData)
        resultTitle = Const.resultTitleAttributedText
        result = Const.resultAttributedText(task.result)
    }

}

extension TaskDetailVM {

    enum Const {

        static let conditionTitleAttributedText = NSAttributedString(string: K.TaskDetail.conditionTitle,
                                                                     attributes: titlesAttributes)
        static func conditionAttributedText(_ text: String) -> NSAttributedString {
            NSAttributedString(string: text, attributes: subtitleAttributes)
        }

        static let inputDataTitleAttributedText = NSAttributedString(string: K.TaskDetail.inputDataTitle,
                                                                     attributes: titlesAttributes)
        static func inputDataAttributedText(_ text: String?) -> NSAttributedString? {
            guard let text = text else { return nil }
            return NSAttributedString(string: text, attributes: subtitleAttributes)
        }

        static let resultTitleAttributedText = NSAttributedString(string: K.TaskDetail.resultTitle,
                                                                  attributes: titlesAttributes)
        static func resultAttributedText(_ text: String) -> NSAttributedString {
            NSAttributedString(string: text, attributes: subtitleAttributes)
        }

        static let titlesAttributes: [NSAttributedString.Key: Any]  = [
            NSAttributedString.Key.font: UIFont(name: K.Tasks.titleTasksFontName, size: 24)!,
            NSAttributedString.Key.foregroundColor: UIColor(named: K.Tasks.titleTasksColorName)!,
            NSAttributedString.Key.paragraphStyle: titlesParagraphStyle
        ]

        static let titlesParagraphStyle: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1.03
            paragraphStyle.alignment = .center
            return paragraphStyle
        }()

        static let subtitleAttributes: [NSAttributedString.Key: Any]  = [
            NSAttributedString.Key.font: UIFont(name: K.TaskDetail.subtitleFontName, size: 18)!,
            NSAttributedString.Key.foregroundColor: UIColor(named: K.TaskDetail.subtitleColorName)!,
            NSAttributedString.Key.paragraphStyle: subtitleParagraphStyle
        ]

        static let subtitleParagraphStyle: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1.03
            paragraphStyle.alignment = .left
            return paragraphStyle
        }()

    }

}
