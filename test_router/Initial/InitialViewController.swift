//
//  InitialViewController.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

final class InitialViewController: UIViewController {
    
    static func makeFromStoryboard() -> InitialViewController {
        let vc = UIStoryboard.initialViewController
        return vc
    }
    
    
    @IBAction private func showSecondButton(_ sender: Any) {
        Router.showSecond(vc: self)
    }
}
