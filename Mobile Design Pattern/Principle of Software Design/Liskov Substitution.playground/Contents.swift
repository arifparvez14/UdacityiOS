import UIKit

var str = "Liskov Substitution"

//*** How we violate Liskov Substiution

class Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        return width * height
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

class Square: Rectangle {
    
    init(side: Int) {
        super.init(width: side, height: side)
    }
    
    override var width: Int {
        didSet{
            guard oldValue != width else { return }
            //print(oldValue, height)
            height = width
        }
    }
    
    override var height: Int {
        didSet{
            guard oldValue != height else { return }
            //print(oldValue, width)
            width = height
        }
    }
}

func printArea(rectangle: Rectangle) {
    rectangle.width = 3
    rectangle.height = 4
    print(rectangle.area)
}

let rectangle = Rectangle(width: 1, height: 1)
printArea(rectangle: rectangle)

let square = Square(side: 1)
printArea(rectangle: square)


//*** How we solve Liskov Substiution

protocol Shape{
    var area: Int { get}
}

class LSRectangle: Shape {
    var width: Int
    var height: Int
    
    var area: Int {
        return width * height
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

class LSSquare: Shape {
    private var side: Int
    
    var area: Int {
        return side * side
    }
    
    init(side: Int) {
        self.side = side
    }
}

func LSprintArea(shape: Shape) {
    print(shape.area)
}

let lsrectangle = LSRectangle(width: 1, height: 1)
LSprintArea(shape: lsrectangle)

let lssquare = LSSquare(side: 1)
LSprintArea(shape: lssquare)

