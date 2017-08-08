//
//  GAL_HomeVC.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit

class GAL_HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "首页"

        UserDefaults.standard.set("666", forKey: "number")
        UserDefaults.standard.synchronize()
        // Do any additional setup after loading the view.
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        button.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
        
        button.setImage(UIImage.init(named: "xiaoxi_btn_hover@2x"), for: .normal)
        
        button.setTitle("跳转", for: .normal)
        
        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        button.tag = 0
        
        button.addTarget(self, action: #selector(buttonClick(sender:)), for:.touchUpInside)
        
        self.view .addSubview(button)

        
    }

    
    func buttonClick(sender:UIButton?){

        let gal = GAL_MineVC()
        gal.name = "首页页面"
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(gal, animated: true)
        self.hidesBottomBarWhenPushed = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

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
