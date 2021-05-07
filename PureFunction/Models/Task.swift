//
//  Task.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 03.05.2021.
//

struct Task {

    let id: Int
    let type: TaskType
    let condition: String
    let inputData: String?
    let image: String
    let background: String

}

extension Task {

    var result: String {
        switch type {
        case .pureFuncDefinition:
            return K.Tasks.Task1.result
        case .sortedIntArray(let array):
            return PureFunction.sortIntArray(array)
        case .intArrayToStrTransformation(let array):
            return PureFunction.transformIntArrayToString(array)
        case .strArrayToLineTransformation(let array):
            return PureFunction.transformStrArrayToLine(array)
        case .delayFunc(let closure):
            return PureFunction.performDelayFunction(closure)
        case .returnedClosureFunction(let func1, let func2):
            return PureFunction.performClosureReturnFunc(func1, func2)()
        case .sortedArrayByAlgorithm(let array, let sortedFunc):
            return PureFunction.sortIntArrayByAlgorithm(array, sortedFunc)
        case .anyFixOperatorsDefinition:
            return K.Tasks.Task8.result
        }
    }

}
