//
//  ThirdViewController.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/10.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    
    private let CELL_NIB_NAME = "ThirdTableViewCell"
    private let CELL_ID = "ThirdTableViewCell"
    
    var countModel: [CountModel] = []
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            let cellNIB = UINib(nibName: CELL_NIB_NAME, bundle: nil)
            tableView.register(cellNIB, forCellReuseIdentifier: CELL_ID)
            
            tableView.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.isHidden = false
    }
    
    static func makeFromStoryboard(countModel: CountModel) -> ThirdViewController {
        let vc = UIStoryboard.thirdViewController
        vc.countModel.append(countModel)
        return vc
    }
    
}

extension ThirdViewController: UITableViewDelegate {
    
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as? ThirdTableViewCell
        else {
            
            return UITableViewCell()
        }
        
    
        let count = countModel[indexPath.row].count
        
        cell.configure(countModel: count)
        
        
        return cell
    }
    
    
}
