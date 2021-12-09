final public class Music {
  public let notes: [String]

  public init(notes: [String]) {
    self.notes = notes
  }

  public func prepared() -> String {
    return notes.joined(separator: " ")
  }
}

open class Instrument {
    
    // properties
    public let brand: String
    
    public init(brand: String) {
        self.brand = brand // Since the property and the parameter have the same name, you use the self keyword to distinguish between them.
    }
    
    // methods -> functions defined inside a class are called methods because they have access to properties
    open func tune() -> String {
        fatalError("Implement this method for \(brand)")
    }
    // The tune() method is a placeholder function that crashes at runtime if you call it.
    // Classes with methods like this are said to be abstract because they are not intended for direct use. Instead, you must define a subclass that overrides the method to do something sensible instead of only calling fatalError().
    
    open func play(_ music: Music) -> String {
      return music.prepared()
    }
    
    final public func perform(_ music: Music) {
      print(tune())
      print(play(music))
    }
}
