//
//  File.swift
//  GBDSA
//
//  Created by Gurinder Singh Batth on 17/05/25.
//

import Foundation

public class ArrayDSA {
    public init() { }
    
    public func findWithBinarySearch<T: Comparable & Equatable>(_ list: [T], data: T) -> Int? {
        var minIndex = 0
        var maxIndex = list.count
        var mid = (minIndex + maxIndex) / 2
        while minIndex < maxIndex - 1 {
            let value = list[mid]
            if value == data {
                return mid
            } else if data < value {
                maxIndex = mid
            } else if data > value {
                minIndex = mid
            }
            mid = (minIndex + maxIndex) / 2
        }
        return nil
    }
    
    public func binary(with array: [Int], value: Int) -> Int? {
        var left = 0
        var right = array.count - 1
        
        while left <= right {
            let mid = (left + right) / 2
            if array[mid] == value {
                return mid
            } else if value < array[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return nil
    }
    
    public func removeEvenNumber(from list: [Int]) -> [Int] {
        var listWithoutEvenNumber = [Int]()
        for value in list {
            if value % 2 != 0 {
                listWithoutEvenNumber.append(value)
            }
        }
        return listWithoutEvenNumber
    }
    
    public func removeOddNumber(from list: [Int]) -> [Int] {
        var listWithoutOddNumber = [Int]()
        for value in list {
            if value % 2 == 0 {
                listWithoutOddNumber.append(value)
            }
        }
        return listWithoutOddNumber
    }
    
    public func reverseArrayBasic<T>(_ array: [T]) -> [T] {
        let count = array.count
        var reversedArray = [T]()
        for index in 0..<count {
            reversedArray.append(array[(count - 1) - index])
        }
        return reversedArray
    }
    
    public func reverseArrayImproved<T>(_ array: [T]) -> [T] {
        var maxIndex = array.count - 1
        var minIndex = 0
        var reversedArray = array
        while minIndex < maxIndex {
            let tempValue = reversedArray[minIndex]
            reversedArray[minIndex] = reversedArray[maxIndex]
            reversedArray[maxIndex] = tempValue
            minIndex += 1
            maxIndex -= 1
        }
        return reversedArray
    }
    
    public func secondMaximumValue(_ array: [Int]) -> Int? {
        guard array.count >= 2 else { return nil }
        var max = array.first ?? .min
        var secondMax = Int.min
        for value in array {
            if value > max {
                secondMax = max
                max = value
            }
            if value > secondMax && value < max {
                secondMax = value
            }
        }
        return secondMax == Int.min ? nil : secondMax
    }
    
    public func moveZerosAtTheEnd(_ array: inout [Int]) -> [Int] {
        var index = 0
        let length = array.count
        while index < length {
            let value = array[index]
            if value == 0 {
                array.remove(at: index)
                array.append(0)
            }
            index += 1
        }
        return array
    }
    
    public func moveZerosAtTheEndWithForLoop(_ array: [Int]) -> [Int] {
        var arrayToReplace = array
        var j = 0
        for (index, value) in arrayToReplace.enumerated() {
            if value != 0 && arrayToReplace[j] == 0 {
                let tempValue = value
                arrayToReplace[index] = arrayToReplace[j]
                arrayToReplace[j] = tempValue
            }
            if arrayToReplace[j] != 0 {
                j += 1
            }
        }
        return arrayToReplace
    }
    
    public func findMissingNumber(_ array: [Int]) -> Int {
        let count = array.count
        let maxNumber = (count + 1)
        var sum = maxNumber * (maxNumber + 1) / 2
        array.forEach{ sum -= $0 }
        return sum
    }
    
    public func isPalindrome(string : String) -> Bool {
        var startValue: Int = 0
        var endValue: Int = string.count - 1
        var startIndex = string.index(string.startIndex, offsetBy: startValue)
        var lastIndex = string.index(string.startIndex, offsetBy: endValue)
        while startIndex < lastIndex {
            if string[startIndex] != string[lastIndex] {
                return false
            }
            startValue += 1
            endValue -= 1
            startIndex = string.index(string.startIndex, offsetBy: startValue)
            lastIndex = string.index(string.startIndex, offsetBy: endValue)
        }
        return true
    }
}
