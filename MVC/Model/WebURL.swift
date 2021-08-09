//
//  WebURL.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import Foundation

var mainUrl = "https://jsonplaceholder.typicode.com/"

enum Api {
    case Photos
    case User
    
    var url:URL{
        switch self{
        case .Photos:
            return URL(string: mainUrl + "photos")!
        case .User:
            return URL(string: mainUrl + "users")!

        }
    }
}

