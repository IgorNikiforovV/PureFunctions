//
//  PureFunction.swift
//  PureFunction
//
//  Created by Игорь Никифоров on 02.05.2021.
//

import Foundation


public enum PureFunction {

    public static func sortIntArray(_ array: [Int]) -> String {
        array.sorted().reduce("", { "\($0)\($0 == "" ? "" : ", ")\(String($1))" })
    }

    public static func transformIntArrayToString(_ array: [Int]) -> String {
        array.map { String($0) }.reduce("", { "\($0)\($0 == "" ? "" : ", ")'\($1)'" })
    }

    public static func transformStrArrayToLine(_ array: [String]) -> String {
        array.reduce("", { "\($0)\($0 == "" ? "" : " ")\($1)" })
    }

    public static func showDelay() {
        sleep(1)
    }

    public static func performDelayFunction(_ function: () -> Void) -> String {
        let start = CFAbsoluteTimeGetCurrent()
        function()
        let diff = CFAbsoluteTimeGetCurrent() - start
        return "\(diff)"
    }

    public static func getFirstTestString() -> String {
        "First func completed"
    }

    public static func getSecondTestString() -> String {
        "Second func completed"
    }

    public static func performClosureReturnFunc(_ func1: @escaping () -> String,
                                                _ func2: @escaping () -> String) -> (() -> String) {
        { "\(func1()) and \(func2())" }
    }

    public static func performReturnOtherFuncFunc() -> String {
        performClosureReturnFunc(getFirstTestString, getSecondTestString)()
    }

    public static func sortIntArrayByAlgorithm(_ array: [Int],_ sortFunct: (Int, Int) -> Bool) -> String {
        array.sorted(by: sortFunct).reduce("", { "\($0)\($0 == "" ? "" : ", ")\(String($1))" })
    }

}
