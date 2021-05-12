//
//  ThirdTableViewCell.swift
//  test_router
//
//  Created by Yudai Fujioka on 2021/05/12.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet private weak var countLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        countLabel.text = nil
    }
    
    func configure(countModel: Int) {
        countLabel.text = countModel.description
    }
}
