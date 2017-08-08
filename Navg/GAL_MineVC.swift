//
//  GAL_MineVC.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit

class GAL_MineVC: UIViewController {

    @IBOutlet weak var xibView: UIView!
    
    var name = String()
    var pwd:String = ""
    
    var isred = Bool()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "我的"
        
        let vie = UIView(frame: CGRect(x: 10, y: 68, width: 50, height: 80))
        vie.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.view .addSubview(vie)
        
        let vie1 = UIView(frame: CGRect(x: kScreenWidth-60, y: 68, width: 50, height: 80))
        vie1.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        self.view .addSubview(vie1)

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NSLog("传值name = %@", name)
    }
    
    @IBAction func Click(_ sender: UIButton) {
        
//        if isred {
//            NSLog("点击了xib中的按钮")
//            xibView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
//            isred = false
//
//        }else
//        {
//            NSLog("tag不对")
//            xibView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
//            isred = true
//        }
        
        sender.isSelected = !sender.isSelected
        
        sender.isSelected ?  sender.setTitle("再点击", for: .selected) :  sender.setTitle("点击", for: .application)
        
        sender.isSelected ? first():second()
        
    }
    
    func first(){
        NSLog("点击了xib中的按钮")
        xibView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        isred = false
    }
    
    func second(){
        NSLog("tag不对")
        xibView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        isred = true
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
