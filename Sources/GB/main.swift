//
//  File.swift
//  GBDSA
//
//  Created by Gurinder Singh Batth on 17/05/25.
//

import Foundation
import GBDSA

//MARK: - Singly Linked List
typealias ListNode<T: Equatable> = SinglyLinkedList<T>.ListNode
let sll = SinglyLinkedList<Int>()
sll.insertAtLast(with: 1)
sll.insertAtLast(with: 1)
sll.insertAtLast(with: 2)
sll.insertAtLast(with: 2)
sll.insertAtLast(with: 2)
sll.insertAtLast(with: 2)
sll.insertAtLast(with: 3)
sll.insertAtLast(with: 3)
sll.insertAtLast(with: 3)
sll.insertAtLast(with: 4)
sll.insertAtLast(with: 4)
sll.display()
sll.removeTheDuplicateFromListImproved()
sll.display()

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
