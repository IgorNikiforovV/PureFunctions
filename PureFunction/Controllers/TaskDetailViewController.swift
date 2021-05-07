//
//  TaskDetailViewController.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 04.05.2021.
//

import UIKit

class TaskDetailViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet private weak var conditionTitleLabel: UILabel!
    @IBOutlet private weak var conditionLabel: UILabel!
    @IBOutlet private weak var inputDataTitleLabel: UILabel!
    @IBOutlet private weak var inputDataLabel: UILabel!
    @IBOutlet private weak var resultTitleLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension TaskDetailViewController {

    func configure(_ viewModel: TaskDetailVM) {
        conditionTitleLabel.attributedText = viewModel.conditionTitle
        conditionLabel.attributedText = viewModel.condition
        inputDataTitleLabel.attributedText = viewModel.inputDataTitle
        inputDataLabel.attributedText = viewModel.inputData
        inputDataTitleLabel.isHidden = viewModel.isInputDataHidden
        inputDataLabel.isHidden = viewModel.isInputDataHidden
        resultTitleLabel.attributedText = viewModel.resultTitle
        resultLabel.attributedText = viewModel.result
    }

}
