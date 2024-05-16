//
//  ColorDetailVC.swift
//  Colors
//
//  Created by Михаил Беребердин on 16.05.2024.
//

import UIKit

class ColorDetailVC: UIViewController {

    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = self.color ?? .systemBackground
    }
}
