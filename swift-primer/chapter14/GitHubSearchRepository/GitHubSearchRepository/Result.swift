//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/07/02.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
