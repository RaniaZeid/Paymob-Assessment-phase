//
//  File.swift
//  
//
//  Created by raniazeid on 19/10/2023.
//

import Foundation
func calc(N: Int , arr:[Int]) -> [Int] {
    var finalArray = Array(repeating: 0, count: N)
    var max = 0
    var position = 0
    var condition = N + 1
    for (int,_) in arr.enumerated() {
       print(arr[int] + 1)
        if (arr[int]) == condition {
            // MAx
            for (i,_) in finalArray.enumerated() {
                finalArray[i] = max
            }
        } else {
            position = arr[int] - 1
            finalArray[position] += 1
            max = finalArray.max() ?? finalArray[position]
        }
    }
    return finalArray
}
func findMissing(arr: [Int]) -> Int{
    var value = 0
    var range = 1 + arr.count
    for i in 1...range {
        if !(arr.contains(i)){
            value = i
        }
    }
    return value
}
