//
//  Router.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

final class Router {
    // 初期画面を表示するメソッド
    static func showRoot(window: UIWindow) {
        let firstVC = UIStoryboard(name: "Initial", bundle: nil).instantiateInitialViewController() as! InitialViewController
        let navFirstVC = UINavigationController(rootViewController: firstVC)
        window.rootViewController = navFirstVC
        window.makeKeyAndVisible()
    }
    
    static func showFirst(vc: UIViewController, animated: Bool = true) {
        let firstVC = InitialViewController.makeFromStoryboard()
        show(from: vc, to: firstVC)
    }
    // 次の画面に遷移するためのメソッド
       static func showSecond(vc: UIViewController, animated: Bool = true) {
        let secondVC = SecondViewController.makeFromStoryboard()
           show(from: vc, to: secondVC)
       }
    
    static func showThird(vc: UIViewController, animated: Bool = true, countModel: CountModel) {
        let thirdVC = ThirdViewController.makeFromStoryboard(countModel: countModel)
        show(from: vc, to: thirdVC)
    }
       // from -> to に画面遷移するメソッド
       // 前のViewControllerがNavigationControllerを使用していた場合
       private static func show(from: UIViewController, to: UIViewController, animated: Bool = true) {
           if let nav = from.navigationController {
               nav.pushViewController(to, animated: animated)
           }else {
               from.show(to, sender: nil)
           }
       }
}
