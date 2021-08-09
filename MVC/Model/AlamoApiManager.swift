//
//  AlamoApiModel.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire


struct AlamoRequestModel {
    var path:String
    var method:Alamofire.HTTPMethod
    var parameters:[String:Any]?
    var encoding:ParameterEncoding
    var headers:[String:String]?
    
    init() {
        path = ""
        method = .get
        parameters = nil
        encoding = JSONEncoding() as ParameterEncoding
        headers = ["Content-Type": "application/json"]
    }
}

class AlamoApiManager {
    class func callApiManager(alamoRequast:AlamoRequestModel,succes:@escaping ApiSucBlock,fail:@escaping ApiFailBlock) {
        
        let request = Alamofire.request(alamoRequast.path, method: alamoRequast.method, parameters: alamoRequast.parameters, encoding: alamoRequast.encoding, headers: alamoRequast.headers)
        
        request.validate(statusCode: 200 ..< 600).responseJSON { (response) in
            switch response.result{
            case .success(let data):
                let finalJson = JSON(data)
                print(finalJson)
                succes(finalJson)
            case .failure(let error):
                fail(error)
            }
        }
    }
}

extension String: ParameterEncoding
{
    public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var request = try urlRequest.asURLRequest()
        request.httpBody = data(using: .utf8, allowLossyConversion: false)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
}
struct JSONArrayEncoding: ParameterEncoding {
    private let array: [Parameters]
    
    init(array: [Parameters]) {
        self.array = array
    }
    
    func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest {
        var urlRequest = try urlRequest.asURLRequest()
        
        let data = try JSONSerialization.data(withJSONObject: array, options: [])
        
        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        
        urlRequest.httpBody = data
        
        return urlRequest
    }
}
