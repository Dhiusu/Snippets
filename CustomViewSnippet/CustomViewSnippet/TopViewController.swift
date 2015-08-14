//
//  TopViewController.swift
//  CustomViewSnippet
//
//  Created by Ryu Kikkawa on 8/14/15.
//  Copyright (c) 2015 Ryu Kikkawa. All rights reserved.
//

import UIKit

class TopViewController: CustomViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
        ボタン押下
    */
    @IBAction func actionButton(sender: AnyObject) {
        let second: SecondViewController = SecondViewController()
        
        // 画面遷移（モーダルビュー）
//        self.presentViewController(second,
//            animated: true,
//            completion: nil)
        
        // 画面遷移（NavigationControllerでの画面遷移）
        self.navigationController?.pushViewController( second, animated: true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
