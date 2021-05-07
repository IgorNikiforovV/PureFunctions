//
//  PureFunctionTests.swift
//  PureFunctionTests
//
//  Created by Игорь Никифоров on 02.05.2021.
//

import XCTest
import PureFunction

class PureFunctionTests: XCTestCase {

    let intList = [3, 5, 2, 1, 4]
    let peopleNames = ["Anna", "Andrey", "Igor", "Katy", "Olga"]

    func testSortIntArray() {
        let result = PureFunction.sortIntArray(intList)
        XCTAssertEqual(result, "1, 2, 3, 4, 5")
    }

    func testTransformIntArrayToString() {
        let result = PureFunction.transformIntArrayToString(intList)
        XCTAssertEqual(result, "'3', '5', '2', '1', '4'")
    }

    func testTransformStrArrayToLine() {
        let result = PureFunction.transformStrArrayToLine(peopleNames)
        XCTAssertEqual(result, "Anna Andrey Igor Katy Olga")
    }

    func testPerformDelayFunction() {
        let result = Double(PureFunction.performDelayFunction(PureFunction.showDelay))
        XCTAssertNotNil(result)
        XCTAssertTrue((1...2) ~= result!)
    }

    func testGetFirstTestString() {
        let result = PureFunction.getFirstTestString()
        XCTAssertEqual(result, "First func completed")
    }

    func testGetSecondTestString() {
        let result = PureFunction.getSecondTestString()
        XCTAssertEqual(result, "Second func completed")
    }

    func testPerformClosureReturnFunc() {
        let func1: () -> String = { "Fox" }
        let func2: () -> String = { "Box" }
        let result = PureFunction.performClosureReturnFunc(func1, func2)
        XCTAssertEqual(result(), "Fox and Box")
    }

    func testPerformReturnOtherFuncFunc() {
        let result = PureFunction.performReturnOtherFuncFunc()
        let func1Result = PureFunction.getFirstTestString()
        let func2Result = PureFunction.getSecondTestString()
        XCTAssertEqual(result, "\(func1Result) and \(func2Result)")
    }

    func testSortIntArrayByAlgorithm() {
        let directOrderClosure: (Int, Int) -> Bool = { num1, num2 in num1 < num2 }
        let result1 = PureFunction.sortIntArrayByAlgorithm(intList, directOrderClosure)
        XCTAssertEqual(result1, "1, 2, 3, 4, 5")

        let reverseOrderClosure: (Int, Int) -> Bool = { num1, num2 in num1 > num2 }
        let result2 = PureFunction.sortIntArrayByAlgorithm(intList, reverseOrderClosure)
        XCTAssertEqual(result2, "5, 4, 3, 2, 1")
    }

}
