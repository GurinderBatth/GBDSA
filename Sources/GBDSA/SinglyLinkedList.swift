//
//  SinglyLinkedList.swift
//  GBDSA
//
//  Created by Gurinder Singh Batth on 22/05/25.
//

import Foundation

public class SinglyLinkedList<T: Equatable> {
    
    /// Head of the Singly Linked List
    public var head: ListNode?
    private var _buffer: Int = 0
    
    /// Node of the Singly Linked List
    public class ListNode {
        
        /// Value of the node. It is Generic so user can use any type.
        public var value: T
        
        /// Reference to the next node.
        public var next: ListNode?
        
        /// Initialize the List Node
        /// - Parameters:
        ///   - value: Value of the node
        ///   - next: Reference to the next node. Default value is  `nil`.
        public init(value: T, next: ListNode? = nil) {
            self.value = value
            self.next = next
        }
    }
    
    /// Initialize the Singly Linked List
    /// - Parameter head: Head of the Singly Linked list. Default value is `nil`.
    public init(head: ListNode? = nil) {
        self.head = head
        if head != nil {
            _buffer = 1
        }
    }
    
    /// Insert the node at the first position or at head. It will replace the head with new node, current head become head.next
    /// - Parameter value: value of the node
    public func insertFirst(with value: T) {
        let node = ListNode(value: value)
        node.next = head
        head = node
        _buffer += 1
    }
    
    /// Insert the node at the last of the list
    /// - Parameter value: value of the node
    public func insertAtLast(with value: T) {
        let node = ListNode(value: value)
        if head == nil {
            head = node
            _buffer += 1
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = node
        _buffer += 1
    }
    
    /// Insert the Node at particular position which starts from 1. It will crash if position is lower than one
    /// - Parameters:
    ///   - position: Position where user want to add the node
    ///   - value: Value of the newly added node
    public func insertAt(position: UInt, value: T) {
        if position < 1 {
            fatalError("Position should be greater than zero.")
        }
        var currentPosition = 2
        if position == 1 {
            insertFirst(with: value)
        } else {
            var currentNode = head
            let node = ListNode(value: value)
            while currentPosition < position {
                currentNode = currentNode?.next
                currentPosition += 1
            }
            let nextNode = currentNode?.next
            currentNode?.next = node
            node.next = nextNode
            if currentNode != nil {
                _buffer += 1
            }
        }
    }
    
    /// Delete the First node. It will delete the first node which is head and then replace the head with head.next.
    /// - Returns: It will `return` deleted node.
    @discardableResult
    public func deleteFirstNode() -> ListNode? {
        if head == nil {
            print("No item in the list")
            return nil
        }
        let tempHead = head
        head = tempHead?.next
        tempHead?.next = nil
        _buffer -= 1
        return tempHead
    }
    
    /// Delete the last node.
    /// - Returns: It will `return` deleted node.
    @discardableResult
    public func deleteLastNode() -> ListNode? {
        if head == nil {
            print("No item in the list")
            return nil
        }
        var current = head
        if current?.next == nil {
            head = nil
            _buffer -= 1
            return current
        }
        var previousNode: ListNode?
        while current?.next != nil {
            previousNode = current
            current = current?.next
        }
        previousNode?.next = nil
        if current != nil {
            _buffer -= 1
        }
        return current
    }
    
    /// It will delete the node at the position provided. If position is smaller than 1 it will crash, as positions starts from 1
    /// - Parameter position: position of the node to delete.
    /// - Returns: Returns the currently deleted node.
    @discardableResult
    public func deleteNode(at position: UInt) -> ListNode? {
        if position < 1 {
            fatalError("Position should be greater than zero.")
        }
        var current = head
        if position == 1 {
            head = head?.next
            _buffer -= 1
            return current
        }
        var currentPosition = 1
        var previous: ListNode? = nil
        while currentPosition < position {
            previous = current
            current = current?.next
            currentPosition += 1
        }
        previous?.next = current?.next
        current?.next = nil
        if current != nil {
            _buffer -= 1
        }
        return current
    }
    
    /// It will delete the node at the position provided. If position is smaller than 1 it will crash, as positions starts from 1
    /// - Parameter position: position of the node to delete.
    /// - Returns: Returns the currently deleted node.
    @discardableResult
    public func deleteNodeImproved(at position: Int) -> ListNode? {
        if position == 0 {
            fatalError("Position should be greater than zero.")
        }
        if position == 1 {
            let current = head
            head = head?.next
            _buffer -= 1
            return current
        }
        var currentPosition = 1
        var previous: ListNode? = head
        while currentPosition < position - 1 {
            previous = previous?.next
            currentPosition += 1
        }
        let current = previous?.next
        previous?.next = current?.next
        if current != nil {
            _buffer -= 1
        }
        return current
    }
    
    /// Find the node in the list
    /// - Parameter value: value to be find
    /// - Returns: if node find with value it will return node else returns `nil`
    public func find(value: T) -> ListNode? {
        var current = head
        while current != nil {
            if current?.value == value {
                return current
            }
            current = current?.next
        }
        return nil
    }
    
    
    /// Reverse the list
    @discardableResult
    public func reverse() -> ListNode? {
        var current = head
        var newNext: ListNode? = nil
        var oldNext = current?.next
        
        while oldNext != nil {
            current?.next = newNext
            newNext = current
            current = oldNext
            oldNext = oldNext?.next
        }
        current?.next = newNext
        head = current
        return head
    }
    
    /// Reverse the list with improved Logic
    @discardableResult
    public func reverseImproved() -> ListNode? {
        var current = head
        var next: ListNode? = nil
        var previous: ListNode? = nil
        while current != nil {
            next = current?.next
            current?.next = previous
            previous = current
            current = next
        }
        head = previous
        return head
    }
    
    
    /// Find the nth node from the end of the list. It will crash if position is zero or number is out of bounds.
    /// - Parameter position: position to return the node from end
    /// - Returns: returns the node in the list if found.
    public func findNthNodeFromEnd(_ position: UInt) -> ListNode? {
        if head == nil {
            return nil
        }
        if position <= 0 {
            fatalError("Position should be greater than zero.")
        }
        var mainNode = head
        var referenceNode = head
        var count = 0
        while count < position {
            if referenceNode == nil {
                fatalError("\(position) is greater than list.")
            }
            referenceNode = referenceNode?.next
            count += 1
        }
        while referenceNode != nil {
            mainNode = mainNode?.next
            referenceNode = referenceNode?.next
        }
        return mainNode
    }
    
    @discardableResult
    public func removeTheDuplicateFromList() -> ListNode? {
        var previous: ListNode? = nil
        var mainNode: ListNode? = head
        
        while mainNode != nil {
            if mainNode?.value == previous?.value {
                
            }
        }
        
        return head
    }
    
    /// Display the entire Singly Linked list
    /// - Parameter showList: if true print the list in `value-->value-->value-->end` else prints every value in next line.
    public func display(_ showList: Bool = true) {
        var current = head
        while current != nil {
            if showList {
                print("\(String(describing: current?.value)) --> ", terminator: "")
            } else {
                print("Current Data :- \(String(describing: current?.value)) --> ")
            }
            current = current?.next
        }
        print("List Ended")
    }
    
    /// Length of the linked list
    /// - Parameter fast - Return the length from the buffer. Default is true
    /// - Returns: Length of the list
    public func length(fast: Bool = true) -> Int {
        if fast {
            return _buffer
        }
        if head == nil {
            return 0
        }
        var count = 0
        var current = head
        while current != nil {
            count += 1
            current = current?.next
        }
        return count
    }
}
