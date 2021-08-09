//
//	UserModel.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON

class UserModel{

	var userData : [UserData]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		userData = [UserData]()
		let userDataArray = json.arrayValue
		for userDataJson in userDataArray{
			let value = UserData(fromJson: userDataJson)
			userData.append(value)
		}
	}
    class func callApi(suc:@escaping ApiSucBlock,fail:@escaping ApiFailBlock){
        
        var request : AlamoRequestModel = AlamoRequestModel()
        request.method = .get
        request.path = Api.User.url.absoluteString
        AlamoApiManager.callApiManager(alamoRequast: request, succes: suc, fail: fail)
    }
}
