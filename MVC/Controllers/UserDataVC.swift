//
//  UserDataVC.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import UIKit

class UserDataVC: UIViewController {
    
    @IBOutlet weak var userDataTable : UITableView!
    
    var userInfo: UserModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userDataTable.register(UINib(nibName: "UserDataCell", bundle: nil), forCellReuseIdentifier: "UserDataCell")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        self.userDataTable.reloadData()
    }

}
extension UserDataVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return userInfo?.userData.count ?? 0
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserDataCell") as! UserDataCell
        if let myCellData = userInfo?.userData[indexPath.row] {
            cell.id.text = "ID : \(String((myCellData.id)!))"
            cell.name.text = "NAME : \(String(describing: myCellData.name!))"
            cell.userName.text = "USER NAME : \(String(describing: myCellData.username!))"
            cell.Street.text = "STREET : \(String(describing: myCellData.address.street!))"
            cell.city.text = "CITY : \(String(describing: myCellData.address.city!))"
            cell.zipCode.text = "ZIP CODE : \(String(describing: myCellData.address.zipcode!))"
            cell.phone.text = "PHONE : \(String(describing: myCellData.phone!))"
            cell.webSite.text = "WEB SITE : \(String(describing: myCellData.website!))"
            cell.company.text = "COMPANY : \(String(describing: myCellData.company.name!))"
        }
        return cell;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
