//
//  ViewController.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import UIKit
import Alamofire

class HomeVC: UIViewController {
    
    var userInfo:UserModel?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func GetUserData(_ sender: Button) {
                
        GetUserdataFromApi()
    }
    
    func GetUserdataFromApi(){
        
        UserModel.callApi(suc: {(model) in
                            
            if (model.null == nil){
                self.userInfo = UserModel.init(fromJson: model)
                let VC = self.storyboard?.instantiateViewController(withIdentifier: "UserDataVC") as! UserDataVC
                VC.userInfo = self.userInfo
                self.navigationController?.pushViewController(VC, animated: true)
            } }, fail: { (error) in
                print(error)})
    }

}

