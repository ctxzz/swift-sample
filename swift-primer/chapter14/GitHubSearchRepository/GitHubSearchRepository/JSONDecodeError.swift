//
//  JSONDecodeError.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/06/24.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}

enum JSONDecodeError: Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
