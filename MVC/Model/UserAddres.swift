//
//	UserAddres.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON

class UserAddres{

	var city : String!
	var geo : UserGeo!
	var street : String!
	var suite : String!
	var zipcode : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		city = json["city"].stringValue
		let geoJson = json["geo"]
		if !geoJson.isEmpty{
			geo = UserGeo(fromJson: geoJson)
		}
		street = json["street"].stringValue
		suite = json["suite"].stringValue
		zipcode = json["zipcode"].stringValue
	}

}