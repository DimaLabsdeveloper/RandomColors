//
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by Діма Турчин on 30.07.2024.
//

import UIKit

class ColorsTableViewController: UIViewController{
   
    var colors: [UIColor] = []
    enum Cells{
        static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toDetail = "ToColorsViewController"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
    func addRandomColors(){
        for _ in 1...50{
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController = segue.destination as! ColorsDetailViewController
        destViewController.color = sender as? UIColor
    }
    
    }


   
extension ColorsTableViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.toDetail, sender: colors[indexPath.row])
    }
}
