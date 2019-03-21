//
//  videoViewController.swift
//  Hw01
//
//  Created by vv on 2019/3/22.
//  Copyright © 2019 ouo. All rights reserved.
//

import UIKit
import WebKit

class videoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "b01")!)
        // Do any additional setup after loading the view.
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "b01.jpg")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0);        playVideo()
    }
    
    func playVideo(){
        let video = WKWebView(frame: CGRect(x: 15, y: 150, width: 320, height: 180))
        view.addSubview(video)
        let videoURL = URL(string: "https://bit.ly/2CxVkeT")
        
        let videoReq = URLRequest(url: videoURL!)
        video.load(videoReq)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
