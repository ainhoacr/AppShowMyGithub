//
//  Owner.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import Foundation
import ObjectMapper

public final class Owner: Mappable, NSCoding {
    
    // MARK: Declaration for string constants to be used to decode and also serialize.
    private struct SerializationKeys {
        static let login = "login"
    }
    
    // MARK: Properties
    public var login: String?
    
    // MARK: ObjectMapper Initializers
    /// Map a JSON object to this class using ObjectMapper.
    ///
    /// - parameter map: A mapping from ObjectMapper.
    public required init?(map: Map){
        
    }
    
    /// Map a JSON object to this class using ObjectMapper.
    ///
    /// - parameter map: A mapping from ObjectMapper.
    public func mapping(map: Map) {
        login <- map[SerializationKeys.login]
    }
    
    /// Generates description of the object in the form of a NSDictionary.
    ///
    /// - returns: A Key value pair containing all valid values in the object.
    public func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        if let value = login { dictionary[SerializationKeys.login] = value }
        return dictionary
    }
    
    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
        self.login = aDecoder.decodeObject(forKey: SerializationKeys.login) as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(login, forKey: SerializationKeys.login)
    }
    
}
