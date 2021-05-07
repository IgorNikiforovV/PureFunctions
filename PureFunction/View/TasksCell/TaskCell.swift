//
//  TaskCell.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 03.05.2021.
//

import UIKit

class TaskCell: UITableViewCell {

    // MARK: Outlets

    @IBOutlet private weak var numberImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var containerView: UIView!

    static let identifier = "TaskCell"
    static let nibCell = UINib(nibName: identifier, bundle: nil)

    override func awakeFromNib() {
        super.awakeFromNib()
        initialize()
    }

}

// MARK: public methods

extension TaskCell {

    func configure(_ viewModel: TaskVM) {
        containerView.backgroundColor = viewModel.background
        numberImage.image = viewModel.image
        titleLabel.attributedText = viewModel.condition
    }

}

// MARK: private methods

private extension TaskCell {

    func initialize() {
        backgroundColor = .clear
        containerView.layer.cornerRadius = 22
        containerView.layer.borderWidth = 1
        containerView.layer.borderColor = UIColor.gray.cgColor
    }

}
