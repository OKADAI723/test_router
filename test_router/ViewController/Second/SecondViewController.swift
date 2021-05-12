//
//  SecondViewController.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

final class SecondViewController: UIViewController {
    
    var countModel = CountModel.init(count: 0)
    
    @IBOutlet private weak var countLabel: UILabel! {
        didSet{
            countLabel.text = countModel.count.description
        }
    }
    
    static func makeFromStoryboard() -> SecondViewController {
        let vc = UIStoryboard.secondViewController
        return vc
    }
    
    @IBAction private func countUpButton(_ sender: Any) {
        countModel.count += 1
        countLabel.text = countModel.count.description
    }
    
    @IBAction private func showThirdButton(_ sender: Any) {
        Router.showThird(vc: self, countModel: countModel)
    }
    
}
