//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by omata on 2017/06/24.
//  Copyright © 2017 omata. All rights reserved.
//

import Foundation

// オーバーライドを想定しないためfinalで宣言
final class GitHubAPI {
    struct SearchRepositories: GitHubRequest {
        let keyword: String
        
        // GitHubRequest
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var parameters: Any? {
            return ["q": keyword]
        }
    }
    
    struct SearchUsers: GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<User>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var parameters: Any? {
            return ["q": keyword]
        }
    }
}
