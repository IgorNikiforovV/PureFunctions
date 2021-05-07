//
//  TaskType.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 02.05.2021.
//

import Foundation

enum TaskType: CaseIterable {

    case pureFuncDefinition
    case sortedIntArray([Int])
    case intArrayToStrTransformation([Int])
    case strArrayToLineTransformation([String])
    case delayFunc(() -> Void)
    case returnedClosureFunction(func1: () -> String, func2: () -> String)
    case sortedArrayByAlgorithm([Int], (Int, Int) -> Bool)
    case anyFixOperatorsDefinition

}

extension TaskType {

    static var allCases: [TaskType] {
        [.pureFuncDefinition,
         .sortedIntArray([]),
         .intArrayToStrTransformation([]),
         .strArrayToLineTransformation([]),
         .delayFunc({}),
         .returnedClosureFunction(func1: {""}, func2: {""}),
         .sortedArrayByAlgorithm([], {_,_ in false}),
         .anyFixOperatorsDefinition]
    }

}
