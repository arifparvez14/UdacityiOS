import UIKit

var str = "Interface Segregation"

//*** How Interface segregation violated
protocol Game {
    func start()
    func pause()
    func stop()
    func save()
    func restore()
    func setDifficulty(to difficulty: Int)
}

class RPGGame: Game {
    //All methods used
    func start() {}
    func pause() {}
    func stop() {}
    func save() {}
    func restore() {}
    func setDifficulty(to difficulty: Int) {}
}

class TapBasedGame: Game {
    //Those methods used
    func start() {}
    func pause() {}
    func stop() {}
    
    //Those methods are not used
    func save() {}
    func restore() {}
    func setDifficulty(to difficulty: Int) {}
}

//*** How Interface segregation violated
protocol Saveable {
    func save()
    func restore()
}

protocol VerifyDifficultGame {
    func setDifficulty(to difficulty: Int)
}

protocol ISGame {
    func start()
    func pause()
    func stop()
}

class ISRPGGame: ISGame, Saveable, VerifyDifficultGame {
    func start() {}
    func pause() {}
    func stop() {}
    func save() {}
    func restore() {}
    func setDifficulty(to difficulty: Int) {}
}

class ISTapBasedGame: ISGame {
    func start() {}
    func pause() {}
    func stop() {}
}

