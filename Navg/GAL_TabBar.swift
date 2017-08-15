//
//  GAL_TabBar.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit


class GAL_TabBar: UITabBarController {

//    func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
//        return UIColor (red: r, green: g, blue: b, alpha: a)
//    }
//    
//    let textColor = RGBA(r: 0.51, g: 0.51, b: 0.51, a: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 创建子控制器
        self.createSubViewControllers()
        
        // Do any additional setup after loading the view.
    }

    
    func createSubViewControllers(){
        
        let homeVC = GAL_HomeVC()
        let Mostervc = GAL_Mostervc()
        let FinancialVC = GAL_FinancialVC()
        let MineVC = GAL_MineVC()
        
        let homeNav = GAL_BaseNavCon(rootViewController: homeVC)
        let MosterNav = GAL_BaseNavCon(rootViewController: Mostervc)
        let FinancialNav = GAL_BaseNavCon(rootViewController: FinancialVC)
        let MineNav = GAL_BaseNavCon(rootViewController: MineVC)
        
        homeNav.title = "首页"
        MosterNav.title = "商家"
        FinancialNav.title = "采拍"
        MineNav.title = "我的"
        
        homeNav.tabBarItem.title = "首页"
        MosterNav.tabBarItem.title = "商家"
        FinancialNav.tabBarItem.title = "采拍"
        MineNav.tabBarItem.title = "我的"
        
        homeNav.tabBarItem.image = UIImage.init(named: "xiaoxi_btn@2x")
        MosterNav.tabBarItem.image = UIImage.init(named: "tongxunlu_btn@2x")
        FinancialNav.tabBarItem.image = UIImage.init(named: "yingyong_btn@2x")
        MineNav.tabBarItem.image = UIImage.init(named: "icon_me_click@2x")
        
        homeNav.tabBarItem.selectedImage = UIImage.init(named: "xiaoxi_btn_hover@2x")
        MosterNav.tabBarItem.selectedImage = UIImage.init(named: "tongxunlu_btn_hover@2x")
        FinancialNav.tabBarItem.selectedImage = UIImage.init(named: "yingyong_btn_hover@2x")
        MineNav.tabBarItem.selectedImage = UIImage.init(named: "icon_me_normal@2x")
        
        
        let itmes = [homeNav,MosterNav,FinancialNav,MineNav]
        self.viewControllers = itmes
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
