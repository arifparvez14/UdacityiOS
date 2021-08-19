import UIKit

var str = "Open Close"

//*** How we violate open and close

protocol Shape {}

struct Rectangle: Shape {
    let width: Int
    let height: Int
}

struct Circle: Shape {
    let radius: Int
}

class AreaCalculator {
    func computeArea(shape: Shape) -> Double {
        if let rectangle = shape as? Rectangle {
            return Double(rectangle.height * rectangle.width)
        }
        if let circle = shape as? Circle {
            return Double(circle.radius * circle.radius) * Double.pi
        }
        return 0
    }
}

//*** How to solve violation

protocol OCShape {
    var area: Double { get }
}

struct OCRectangle: Shape {
    let width: Int
    let height: Int
    
    var area: Double{
        return Double(width * height)
    }
}

struct OCCircle: Shape {
    let radius: Int
    
    var area: Double {
        return Double(radius * radius) * Double.pi
    }
}

class OCAreaCalculator {
    func computeArea(shape: OCShape) -> Double {
        return shape.area
    }
}
