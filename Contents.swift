import UIKit

class Node {
    var value : String
    var next : Node?
    
    init(value:String, next:Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    
    var start : Node?

    func printListValues(){
        var current = start
        
        while current != nil {
            print(current!.value)
            current = current?.next
          
        }
    }
    
    func insertElement(value:String){
        if start == nil {
            start = Node(value: value, next: nil)
            return
        }
        
        var current = start
        while current?.next != nil {
            current = current?.next
           
        }
        
        current?.next = Node(value: value, next: nil)
    
    }
    
    func removeValue(value:String){
        var current = start
        var provious = current
        
        if start?.value == value {
            start = start?.next
            return
        }
      
        while current != nil && current?.value != value {
            provious = current
            current = current?.next
            
        }
        
         provious?.next = current?.next
        
    }
    
    
    func insertAtBeginning(value:String){
        if start?.next != nil {
            let new = Node(value: value, next: start)
            start = new
        }
    }

}

let list = LinkedList()

list.insertElement(value: "Bruno")
list.insertElement(value: "Isis")
list.insertElement(value: "Walter")
list.insertElement(value: "Cleo")
// inserts at the beginning of the list
list.insertAtBeginning(value: "Gabriel")

list.removeValue(value: "Walter")

list.printListValues()
