//
//  CustomViewController.swift
//  CustomViewSnippet
//
//  Created by Ryu Kikkawa on 8/14/15.
//  Copyright (c) 2015 Ryu Kikkawa. All rights reserved.
//

/**
    共通テンプレートクラス
*/

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テンプレートの取得、設定
        loadTemplate(className())
        
        // レイアウト調整
        setLayout()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
        テンプレートの取得、設定
    :param: name: テンプレート名
    */
    private func loadTemplate(name: String) {
        // nibNameにはxibファイル名が入る。
        let view:UIView = UINib(nibName: name, bundle: nil).instantiateWithOwner(self, options: nil)[0] as! UIView
        self.view = view;
    }
    
    /**
        クラス名を取得
    */
    private func className() -> String {
        var className = NSStringFromClass(self.dynamicType)
        var range = className.rangeOfString(".")
        return className.substringFromIndex(range!.endIndex)
    }
    
    /**
        レイアウト調整
    */
    private func setLayout() {
        
        // バージョン情報を取得
        let versionString:String = UIDevice.currentDevice().systemVersion
        let version:Int = versionString.componentsSeparatedByString(".")[0].toInt()!
        
        // iOS7 later
        // ステータスバー対応
//        if(version >= 7){
//            let statusBarViewRect:CGRect = UIApplication.sharedApplication().statusBarFrame
//            let heightPadding:CGFloat = statusBarViewRect.size.height + self.navigationController!.navigationBar.frame.size.height;
//            let original:CGRect = self.view.frame;
//            let new:CGRect = CGRectMake(original.origin.x,  original.origin.y + heightPadding,
//                original.size.width,  original.size.height - heightPadding);
//            self.view.frame = new
//        }
        if (self.respondsToSelector(Selector("edgesForExtendedLayout"))) {
            self.edgesForExtendedLayout = .None
        }
        
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
