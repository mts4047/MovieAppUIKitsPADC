//
//  Router.swift
//  Starter
//
//  Created by Myo Thandar soe on 05/05/2023.
//

import Foundation
import UIKit

enum StoryboardName : String {
    case Main = "Main"
    case Authentication = "Authentication"
    case LunchScreen = "LunchScreen"
}

extension UIStoryboard{
    static func mainStoryBoard()->UIStoryboard{
        UIStoryboard(name: StoryboardName.Main.rawValue, bundle: nil)
    }
}

extension UIViewController {
    func navigateToMovieDetailViewController() {
        guard let vc = UIStoryboard.mainStoryBoard().instantiateViewController(identifier: MovieDetailViewController.identifier) as? MovieDetailViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true)
    }
}
