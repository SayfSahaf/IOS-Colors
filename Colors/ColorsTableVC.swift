//
//  ColorsTableVC.swift
//  Colors
//
//  Created by Sayf Sahaf on 2023-04-19.
//

import UIKit

class ColorsTableVC: UIViewController{
    
    var colors: [UIColor] = []
    
    enum cells{
        static let colorCell = "ColorCell"
    }
    
    enum segues{
        static let toDetail = "toColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors(){
        for _ in 0..<50{
            colors.append(.randomColor())
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }

}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
    
}
