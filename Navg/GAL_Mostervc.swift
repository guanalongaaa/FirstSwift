//
//  GAL_Mostervc.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit

class GAL_Mostervc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "商家"
       
        //调用方法
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        
        button.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
        
        button.setImage(UIImage.init(named: "xiaoxi_btn_hover@2x"), for: .normal)
        
        button.setTitle("点击", for: .normal)
        
        button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        button.tag = 0
        
        button.addTarget(self, action: #selector(buttonClick(sender:)), for:.touchUpInside)
        
        self.view .addSubview(button)
    }
    
    func buttonClick(sender:UIButton?){
        let tag = sender?.tag
        
        showAlert(string: tag!)
        
        switch tag! {
        case 0:
        NSLog("7")
            break
        case 1:
            NSLog("8")
            break
        default:
            break
        }
        
    }
    
    func showAlert(string:Int) {
        var alert = UIAlertController()
        alert = UIAlertController(title: "提示", message:String(format:"点击了%d",string), preferredStyle: .alert)
        
        
        let action = UIAlertAction(title: "OK", style: .default) { (nil) in
            NSLog("ok")
        }
        
        alert.addAction(action)
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: { 
                print("提示结束")
            })
        }
        
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
