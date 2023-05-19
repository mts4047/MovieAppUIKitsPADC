//
//  ViewExtensions.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import Foundation
import UIKit

extension UILabel {
    func underlineText(text:String) {
        let attributeString = NSMutableAttributedString.init(string: text)
        attributeString.addAttribute(NSAttributedString.Key.underlineStyle, value:  1, range: NSRange(location: 0, length: attributeString.length))
        self.attributedText = attributeString
    }
}

extension UITableViewCell {
    static var identifier : String{
        String(describing: self)
    }
}

extension UITableView{
    func registerForCell(identifier:String) {
        register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    
    func dequeueCell<T:UITableViewCell>(identifier:String,indexPath:IndexPath)->T {
        guard let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? T else {
            return UITableViewCell() as! T
        }
        return cell
    }
    
}

extension UIViewController {
    static var identifier : String{
        String(describing: self)
    }
}
