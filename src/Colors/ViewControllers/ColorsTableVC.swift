//
//  ColorsTableVC.swift
//  Colors
//
//  Created by Михаил Беребердин on 16.05.2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let ToDetail = "ToDetailSegue"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillColors()
    }
    
    func fillColors() {
        for _ in 0...Int.random(in: 10...50) {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorDetailVC
        destinationVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else { return UITableViewCell() }
        
        cell.backgroundColor = self.colors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.ToDetail, sender: self.colors[indexPath.row])
    }
}
