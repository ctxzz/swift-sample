//
//  HTTPMethod.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/06/24.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}
