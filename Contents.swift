import UIKit

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
    
}

class LinkedList {
    
    var head: Node?
    
    // Inserting real nodes into a linked list
    
    func insert(value: Int) {
        // checking for an empty list first
        if head == nil {
            head = Node(value: 1, next: nil)
        return
        }
        // The idea is to advance to the next node using another while loop
        var current = head
        
        // While current.next is not equal to nil
        while current?.next != nil{
            current = current?.next
        }
        // this helps us to insert the one node in the case of empty anlist
        current?.next = Node(value: value, next: nil)
    }
    
    func displayListItems() {
        // Printing out our list in sequential order starting from the head node.
        // We begin to traverse using a while loop.
        // first we sey the current node equal to the head of the list
        print("Here is whats inside of your list:")
        
        // Alot of logic in here
        // #1 set current variable equal to head
        // As I am executing each iteration of the while loop, we
        var current = head // 1
        // While the current node is real/ not nil. This is the condition check
        while current != nil {
            print(current?.value ?? "") // We add the two question marks as a ni coallesing value
            current = current?.next
        }
    }
    
    func setupDummyNodes() {
        let threeNode = Node(value: 3, next: nil)
        let twoNode = Node(value: 2, next: threeNode)
        head = Node(value: 1, next: twoNode)
        }
    }
                    
// Creating a variable for the linked list that can be used like a variable.
// List must show 1->2->3
let sampleList = LinkedList()
// sampleList.setupDummyNodes()


sampleList.insert(value: 1)
sampleList.insert(value: 2)
sampleList.insert(value: 3)

sampleList.displayListItems()

//print(sampleList.head?.next?.next?.next?.value)
