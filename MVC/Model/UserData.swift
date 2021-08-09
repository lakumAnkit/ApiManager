//
//	UserData.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON

class UserData{

	var address : UserAddres!
	var company : UserCompany!
	var email : String!
	var id : Int!
	var name : String!
	var phone : String!
	var username : String!
	var website : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		let addressJson = json["address"]
		if !addressJson.isEmpty{
			address = UserAddres(fromJson: addressJson)
		}
		let companyJson = json["company"]
		if !companyJson.isEmpty{
			company = UserCompany(fromJson: companyJson)
		}
		email = json["email"].stringValue
		id = json["id"].intValue
		name = json["name"].stringValue
		phone = json["phone"].stringValue
		username = json["username"].stringValue
		website = json["website"].stringValue
	}

}