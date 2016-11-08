//: Playground - noun: a place where people can play

import UIKit

var exampleStack: [Any] = [3, "*", 5, "+", 4, "*", 2, "-", 10, "*", 111, "+", 15]


for _ in exampleStack {
    //guard let item = item as? String else { continue }

    for (index, item) in exampleStack.enumerated() {
        guard let item = item as? String else { continue }
        if item == "*" {
            let first = exampleStack[index - 1] as! Int //6
            let second = exampleStack[index + 1] as! Int //2
            exampleStack[index - 1] = first * second //replace 6 with 12
            exampleStack.remove(at: index) //delete *
            exampleStack.remove(at: index) //delete 2
            break
        } else if item == "/" {
            let first = exampleStack[index - 1] as! Int
            let second = exampleStack[index + 1] as! Int
            exampleStack[index - 1] = first / second
            exampleStack.remove(at: index)
            exampleStack.remove(at: index)
            break
        }
    }
}

for _ in exampleStack {
    //guard let item = item as? String else { continue }
    for (index, item) in exampleStack.enumerated() {
        guard let item = item as? String else { continue }
        if item == "+" {
            let first = exampleStack[index - 1] as! Int
            let second = exampleStack[index + 1] as! Int
            exampleStack[index - 1] = first + second
            exampleStack.remove(at: index)
            exampleStack.remove(at: index)
            break
        } else if item == "-" {
            let first = exampleStack[index - 1] as! Int
            let second = exampleStack[index + 1] as! Int
            exampleStack[index - 1] = first - second
            exampleStack.remove(at: index)
            exampleStack.remove(at: index)
            break
        }
    }
}

print(exampleStack)



