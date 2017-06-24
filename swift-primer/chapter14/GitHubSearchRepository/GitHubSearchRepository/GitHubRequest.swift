//
//  GitHubRequest.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/06/24.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

protocol GitHubRequest {
    associatedtype Response: JSONDecodable
    
    var baseURL: URL { get }
    var path: Stirng { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

}
