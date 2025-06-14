//
//  File.swift
//  GBDSA
//
//  Created by Gurinder Singh Batth on 17/05/25.
//

import Foundation
import GBDSA

//MARK: - Singly Linked List
typealias ListNode<T: Equatable & Comparable> = SinglyLinkedList<T>.ListNode
let sll = SinglyLinkedList<Int>()
let node1 = ListNode(value: 1)
let node5 = ListNode(value: 5)
//let node11 = ListNode(value: 11)
//let node17 = ListNode(value: 17)
//let node25 = ListNode(value: 25)
//let node29 = ListNode(value: 29)
sll.head = node1
node1.next = node5
//node5.next = node11
//node11.next = node17
//node17.next = node25
//node25.next = node29
//node29.next = nil

let sll2 = SinglyLinkedList<Int>()
sll2.head = node2
let node2 = ListNode(value: 2)
let node4 = ListNode(value: 4)
//let node10 = ListNode(value: 10)
//let node_17 = ListNode(value: 17)
//let node26 = ListNode(value: 26)
//let node30 = ListNode(value: 30)

node2.next = node4
//node4.next = node10
//node10.next = node_17
//node_17.next = node26
//node26.next = node30
//node30.next = nil

let mergedListHead = LinkedListAlgorithms().addTwoLinkedList(node1, node2)
display(mergedListHead)
sll.display()

//let sll = MainSinglyLinkedList<Int>()
//sll.head = ListNode(value: 10)
//let mainSecond = ListNode(value: 1)
//let mainThird = ListNode(value: 8)
//let mainFourth = ListNode(value: 11)
//sll.head?.next = mainSecond
//mainSecond.next = mainThird
//mainThird.next = mainFourth
//print(sll.length())


// MARK: - Array
let array = ArrayDSA()
//
//print(array.reverseArrayImproved([1,3,4,5,24,42,3456,423,131,132]))
//print(array.removeEvenNumber(from: [1,3,4,5,24,42,3456,423,131,132]))
//print(array.removeOddNumber(from: [1,3,4,5,24,42,3456,423,131,132]))
//print(array.secondMaximumValue([1,2,4,5,24,42,3456,423,131,132,543]))
//print(array.secondMaximumValue([-5, -2, -1]))
//var arrayToMoveZeros = [0, 1, 0, 4, 12, 0, 0, 2, 0, 3]
//print(array.moveZerosAtTheEndWithForLoop(arrayToMoveZeros))
//print(array.findMissingNumber([2, 4, 1, 8, 6, 3, 7]))
//print(array.isPalindrome(string: "thataht"))
// MARK: - Array Algorithms

//let numbers = [1, 5, 8, 18, 18, 18, 19, 23, 23, 24, 25, 27, 29, 32, 33, 33, 33, 36, 36, 38, 38, 38, 39, 40, 42, 43, 45, 46, 47, 47, 49, 50, 51, 52, 53, 53, 54, 56, 56, 56]
//
//let sortedArray = [3, 7, 10, 14, 18, 23, 29, 32, 38, 42, 47, 53, 59, 64, 68, 73, 79, 85, 91, 97, 104, 112, 119, 126, 134, 145, 157, 168, 182, 195]
//
//print(array.binary(with: sortedArray, value: 95))
