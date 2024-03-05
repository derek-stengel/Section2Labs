/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        "Human(name: \(name), age: \(age)"
    }
    
    static func ==(lhs: Human, rhs: Human) -> Bool {
        lhs.name == rhs.name && lhs.age == rhs.age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        lhs.age < rhs.age // this sorts the humans by age, youngest to oldest
    }
    
}
let person1 = Human(name: "derek", age: 21)
let person2 = Human(name: "Kaylee", age: 19)

if person1 == person2 {
    print("These two are the same person.")
}

if person1 != person2 {
    print("These two are not the same.")
}

let personArray: [Human] = [person1, person2]
let sortedPeople: [Human] = personArray.sorted(by: <)

let thomas = Human(name: "thomas", age: 25)
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(thomas),
   let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.


print(person1)
print(person2)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
// done

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
// done

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
// done 

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
