//
//  ViewController.swift
//  Random Colors
//
//  Created by Cumulations on 24/05/23.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addRandomColor()
    }

	enum Cell{
		static let colorCell = "colorCell"
	}

	enum Segues{
		static let toColorVC = "toColorVC"
	}

    var colors : [UIColor] = []
    func addRandomColor(){
        for _ in 0..<50{
			colors.append(UIColor.random())
        }
    }

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destVC = segue.destination as! ColorsVC
		destVC.color = sender as? UIColor
	}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.colorCell) else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let color = colors[indexPath.row]
		performSegue(withIdentifier: Segues.toColorVC, sender: color)
    }
}
