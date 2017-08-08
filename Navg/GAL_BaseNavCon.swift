//
//  GAL_BaseNavCon.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit

class GAL_BaseNavCon: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置导航栏样式
        navigationBar.barStyle = .black
//        navigationBar.barTintColor = UIColor.green
        navigationBar.barTintColor = kNavBarBgColor
        // 标题样式
        let bar = UINavigationBar.appearance()
        bar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.white,
            NSFontAttributeName : UIFont.systemFont(ofSize: 19)
        ]
        
        // 设置返回按钮的样式
        navigationBar.tintColor = UIColor.white     // 设置返回标识器的颜色
        let barItem = UIBarButtonItem.appearance()
        barItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.white], for: .normal)  // 返回按钮文字样式
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
