//
//  GitHubAPIError.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/06/24.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

struct GitHubAPIError: JSONDecodable, Error {
    struct FieldError: JSONDecodable {
        let resource: String
        let field: String
        let code: String
        
        init(json: Any) throws {
            guard let dictionary = json as? [String: Any] else {
                throw JSONDecodeError.invalidFormat(json: json)
            }
            
            guard let resource = dictionary["resource"] as? String else {
                throw JSONDecodeError.missingValue(key: "resource", actualValue: dictionary["resource"])
            }
            
            guard let field = dictionary["field"] as? String else {
                throw JSONDecodeError.missingValue(key: "field", actualValue: dictonary["field"])
            }
            
            guard let code = dictionary["code"] as? String else {
                throw JSONDecodeError.missingValue(key: "code", actualValue: dictionary["code"])
            }
            
            self.resource = resource
            self.field = field
            self.code = code
        }
    }
    
    let message: String
    let fieldErrors: [FieldError]
    
    init(json: Any) throws {
        guard let dictionary = json as? [String: Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let message = dictionary["message"] as? String else {
            throw JSONDecodeError.missingValue(key: "message", actualValue: dictionary["message"])
        }
        
        let fieldErrorObjects = dictionary["errors"] as? [Any] ?? []
        let fieldErrors = try fieldErrorObjects.map {
            return try FieldError(json: $0)
        }
        
        self.message = message
        self.fieldErrors = fieldErrors
    }
}
