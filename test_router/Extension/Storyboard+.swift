//
//  Storyboard+.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

// Storyboardの読み込みを１箇所にまとめる
extension UIStoryboard {
  static var initialViewController: InitialViewController {
    UIStoryboard.init(name: "Initial", bundle: nil).instantiateInitialViewController() as! InitialViewController
  }

  static var secondViewController: SecondViewController {
    UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
  }

  static var thirdViewController: ThirdViewController {
    UIStoryboard.init(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
  }
}
