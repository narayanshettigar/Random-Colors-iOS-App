//
//  ColorsVC.swift
//  Random Colors
//
//  Created by Cumulations on 24/05/23.
//

import UIKit

class ColorsVC: UIViewController {

	var color : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = color ?? UIColor.blue
			// Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
