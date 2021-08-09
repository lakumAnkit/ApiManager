//
//  Button.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import UIKit

@IBDesignable class Button: UIButton {

    @IBInspectable var cornerradius:CGFloat = 0{
        didSet{
            setUP()
        }
    }
    @IBInspectable var BGcolor:UIColor = .red{
        didSet{
            setUP()
        }
    }
    
    func setUP(){
        self.layer.cornerRadius = cornerradius
        self.layer.backgroundColor = BGcolor.cgColor
    }
}
