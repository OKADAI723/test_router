//
//  ThirdViewController.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    var countModel = CountModel.init(count: 0)
    
    
    @IBOutlet private weak var countLabel: UILabel! {
        didSet {
            countLabel.text = countModel.count.description
        }
    }
    
    static func makeFromStoryboard(countModel: CountModel) -> ThirdViewController {
        let vc = UIStoryboard.thirdViewController
        vc.countModel = countModel
        return vc
    }
    
}
