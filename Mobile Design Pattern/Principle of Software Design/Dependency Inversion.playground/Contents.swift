import UIKit

var str = "Dependency Inversion"
//*** How Dependency Inversion violated
class Message {
    let id: String
    let text: String
    
    init(id: String, text: String) {
        self.id = id
        self.text = text
    }
}

class MessageCacher {
    let cache: InMemoryCacher
    
    init(cache: InMemoryCacher) {
        self.cache = cache
    }
    
    func store(message: Message) {
        cache.cache(object: cache)
    }
}

class InMemoryCacher {
    func cache(object: AnyObject) {
        //cache object
    }
}



//*** How Dependency Inversion resolved

protocol ObjectCache {
    func cache(object: AnyObject)
}

class DIMessage {
    let id: String
    let text: String
    
    init(id: String, text: String) {
        self.id = id
        self.text = text
    }
}

class DIMessageCacher {
    let cache: ObjectCache
    
    init(cache: ObjectCache) {
        self.cache = cache
    }
    
    func store(message: Message) {
        cache.cache(object: message)
    }
}

class DIInMemoryCacher: ObjectCache {
    func cache(object: AnyObject) {
        //cache object
    }
}
