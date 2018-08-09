import Foundation

extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}

class Foo: NSObject{
    let name:String
    init(_name: String) {
        name = _name
    }
    
    override var hashValue: Int {
        return name.hashValue
    }
}

let names1 = [Foo(_name: "Paul")]
let names2 = [Foo(_name: "Paul")]
let difference = names1.difference(from: names2)

print(difference.count)
//Count returns 2 why not 0?
