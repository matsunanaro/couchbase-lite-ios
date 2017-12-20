//
//  PropertyExpression.swift
//  CBL Swift
//
//  Created by Pasin Suriyentrakorn on 11/8/17.
//  Copyright © 2017 Couchbase. All rights reserved.
//

import Foundation

public class PropertyExpression: Expression {
    
    /// Specifies an alias name of the data source to query the data from.
    ///
    /// - Parameter alias: The alias name of the data source.
    /// - Returns: The property Expression with the given data source alias name.
    public func from(_ alias: String) -> Expression {
        return Expression(CBLQueryExpression.property(property, from: alias))
    }
    
    // Internal
    
    let property: String
    
    init(property: String) {
        self.property = property
        super.init(CBLQueryExpression.property(property))
    }
    
}