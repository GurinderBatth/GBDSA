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
let node2 = ListNode(value: 2)
let node3 = ListNode(value: 3)
let node4 = ListNode(value: 4)
let node5 = ListNode(value: 5)
let node6 = ListNode(value: 6)
sll.head = node1
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node3
print(sll.startingNodeOfLoopInLinkedList()?.value)

//let head = SinglyLinkedList(value: 10)
//let second = SinglyLinkedList(value: 1)
//let third = SinglyLinkedList(value: 8)
//let fourth = SinglyLinkedList(value: 11)
//head.next = second
//second.next = third
//third.next = fourth
//
//printLinkedList(head: head)
//

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
//let array = ArrayDSA()
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
