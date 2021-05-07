//
//  TasksController.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 02.05.2021.
//

import UIKit

class TasksViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var tableView: UITableView!

    // MARK: Properties

    let tasks = TaskList.tasks

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar(true)
        configureTitleLabel()
        configureSubtitleLabel()
        configureTableView()
    }

}

// MARK: - Private methods

private extension TasksViewController {

    func configureTableView() {
        let nibCell = TaskCell.nibCell
        tableView.register(nibCell, forCellReuseIdentifier: TaskCell.identifier)
        tableView.backgroundColor = UIColor.clear
    }

    func configureTitleLabel() {
        titleLabel.attributedText = Const.titleAttributedText(K.Tasks.titleText)
    }

    func configureSubtitleLabel() {
        subtitleLabel.attributedText = Const.subtitleAttributedText(K.Tasks.subtitleText)
    }

    func setNavigationBar(_ hidden: Bool) {
        navigationController?.navigationBar.isHidden = hidden
    }

}

// MARK: - UITableViewDataSource

extension TasksViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.identifier, for: indexPath) as! TaskCell
        let viewModel = TaskVM(task: tasks[indexPath.item])
        cell.configure(viewModel)
        return cell
    }

}

extension TasksViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let taskDetailViewController = TaskDetailViewController.present() else { return }
        let taskDetail = TaskDetailVM(task: tasks[indexPath.item])
        present(taskDetailViewController, animated: true)
        taskDetailViewController.configure(taskDetail)
    }

}

extension TasksViewController {

    enum Const {

        // title
        static func titleAttributedText(_ text: String) -> NSAttributedString {
            NSAttributedString(string: text, attributes: titleAttributes)
        }

        static let titleAttributes: [NSAttributedString.Key: Any]  = [
            NSAttributedString.Key.font: UIFont(name: K.TaskCell.titleFontName, size: 22)!,
            NSAttributedString.Key.foregroundColor: UIColor(named: K.Tasks.titleTasksColorName)!,
            NSAttributedString.Key.paragraphStyle: titleParagraphStyle
        ]

        static let titleParagraphStyle: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1.03
            paragraphStyle.alignment = .center
            return paragraphStyle
        }()

        // subtitle
        static func subtitleAttributedText(_ text: String) -> NSAttributedString {
            return NSAttributedString(string: text, attributes: subtitleAttributes)
        }

        static let subtitleAttributes: [NSAttributedString.Key: Any]  = [
            NSAttributedString.Key.font: UIFont(name: K.Tasks.titleTasksFontName, size: 18)!,
            NSAttributedString.Key.foregroundColor: UIColor(named: K.Tasks.titleTasksColorName)!,
            NSAttributedString.Key.paragraphStyle: subtitleParagraphStyle
        ]

        static let subtitleParagraphStyle: NSMutableParagraphStyle = {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineHeightMultiple = 1.03
            paragraphStyle.alignment = .center
            return paragraphStyle
        }()

    }

}
