//
//  movieController.swift
//  Hw01
//
//  Created by User20 on 2019/3/21.
//  Copyright © 2019 ouo. All rights reserved.
//

import UIKit

class movieController: UIViewController {
    
    var gradientLayer: CAGradientLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //createGradientLayer()
    }
    
    func createGradientLayer(){
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor(red: 1.0, green: 204.0/255.0, blue: 1.0, alpha: 0.3).cgColor,UIColor(red: 1.0, green: 153.0/255.0, blue: 204.0/255.0, alpha: 0.8).cgColor]
        gradientLayer.zPosition = -1
        self.view.layer.addSublayer(gradientLayer)
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
