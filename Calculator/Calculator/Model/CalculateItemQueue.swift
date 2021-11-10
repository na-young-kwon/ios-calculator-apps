//
//  CalculateItemQueue.swift
//  Calculator
//
//  Created by 권나영 on 2021/11/09.
//

import Foundation

struct CalculateItemQueue<T>: CalculateItem {
    private(set) var enqueueStack: [T] = []
    private(set) var dequeueStack: [T] = []
    
    mutating func enqueue(element: T) {
        enqueueStack.append(element)
    }
    
    mutating func dequeue() -> T? {
        if enqueueStack.isEmpty, dequeueStack.isEmpty {
            return nil
        }
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.removeLast()
    }
}