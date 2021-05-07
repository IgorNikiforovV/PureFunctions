//
//  TaskList.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 03.05.2021.
//

struct TaskList {

    static let tasks: [Task] = {
        var tasks = [Task]()

        for (offset, type) in TaskType.allCases.enumerated() {
            let id = offset + 1
            let task: Task
            switch type {
            case .pureFuncDefinition:
                task = Task(id: id,
                            type: .pureFuncDefinition,
                            condition: K.Tasks.Task1.condition,
                            inputData: nil,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .sortedIntArray:
                task = Task(id: id,
                            type: .sortedIntArray(K.Tasks.Task2.param),
                            condition: K.Tasks.Task2.condition,
                            inputData: K.Tasks.Task2.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .intArrayToStrTransformation:
                task = Task(id: id,
                            type: .intArrayToStrTransformation(K.Tasks.Task3.param),
                            condition: K.Tasks.Task3.condition,
                            inputData: K.Tasks.Task3.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .strArrayToLineTransformation:
                task = Task(id: id,
                            type: .strArrayToLineTransformation(K.Tasks.Task4.param),
                            condition: K.Tasks.Task4.condition,
                            inputData: K.Tasks.Task4.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .delayFunc:
                task = Task(id: id,
                            type: .delayFunc(PureFunction.showDelay),
                            condition: K.Tasks.Task5.condition,
                            inputData: K.Tasks.Task5.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .returnedClosureFunction:
                task = Task(id: id,
                            type: .returnedClosureFunction(func1: PureFunction.getFirstTestString,
                                                           func2: PureFunction.getSecondTestString),
                            condition: K.Tasks.Task6.condition,
                            inputData: K.Tasks.Task6.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .sortedArrayByAlgorithm:
                task = Task(id: id,
                            type: .sortedArrayByAlgorithm(K.Tasks.Task7.param1,
                                                          K.Tasks.Task7.param2),
                            condition: K.Tasks.Task7.condition,
                            inputData: K.Tasks.Task7.inputData,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            case .anyFixOperatorsDefinition:
                task = Task(id: id,
                            type: .anyFixOperatorsDefinition,
                            condition: K.Tasks.Task8.condition,
                            inputData: nil,
                            image: "\(K.Tasks.imagePrefix)\(id)",
                            background: "\(K.Tasks.backgroundPrefix)\(id)")
            }

            tasks.append(task)
        }

        return tasks
    }()

}
