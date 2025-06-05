//
//  LinkedListAlgorithms.swift
//  GBDSA
//
//  Created by Gurinder Singh Batth on 04/06/25.
//

public typealias ListNode<T: Equatable & Comparable> = SinglyLinkedList<T>.ListNode

public struct LinkedListAlgorithms {
    public init() {
        
    }
    
    public func mergeTwoSortedLinkedLists(_ head1: ListNode<Int>, _ head2: ListNode<Int>) -> ListNode<Int>? {
        var dummyNode: ListNode? = ListNode(value: 0)
        var tailNode: ListNode? = dummyNode
        var head1: ListNode? = head1
        var head2: ListNode? = head2
        while head1 != nil && head2 != nil {
            if head1!.value <= head2!.value {
                tailNode?.next = head1
                head1 = head1?.next
            } else {
                tailNode?.next = head2
                head2 = head2?.next
            }
            tailNode = tailNode?.next
        }
        if head1 == nil {
            tailNode?.next = head2
        } else {
            tailNode?.next = head1
        }
        return dummyNode?.next
    }
}
