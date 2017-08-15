//
//  GAL_HomeVC.swift
//  Navg
//
//  Created by love on 2017/8/7.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit

import SwiftyJSON

class GAL_HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "首页"

        UserDefaults.standard.set("666", forKey: "number")
        UserDefaults.standard.synchronize()
        // Do any additional setup after loading the view.
        
        let list = [0,1]
        
        for i in list {
            
            let button = UIButton(frame: CGRect(x: 150, y: 94+120*i, width: 80, height: 80))
            
            button.layer.cornerRadius = 20
            button.layer.masksToBounds = true
            
//            button.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
            
            button.setImage(UIImage.init(named: "xiaoxi_btn_hover@2x"), for: .normal)
            
            if i == 0 {
                button.setTitle("跳转", for: .normal)
            }else{
                button.setTitle("访问", for: .normal)
            }
            
            
            
            button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            
            button.tag = i
            
            button.addTarget(self, action: #selector(buttonClick(sender:)), for:.touchUpInside)
            
            self.view .addSubview(button)
            
        }
        
        
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
//        
//        button.layer.cornerRadius = 20
//        button.layer.masksToBounds = true
//        
//        button.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
//        
//        button.setImage(UIImage.init(named: "xiaoxi_btn_hover@2x"), for: .normal)
//        
//        button.setTitle("跳转", for: .normal)
//        
//        button.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
//        
//        button.tag = 0
//        
//        button.addTarget(self, action: #selector(buttonClick(sender:)), for:.touchUpInside)
//        
//        self.view .addSubview(button)

        
    }

    
    func buttonClick(sender:UIButton?){

        let tag = sender?.tag
        
        if tag == 0 {
            let gal = GAL_MineVC()
            gal.name = "首页页面"
            self.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(gal, animated: true)
            self.hidesBottomBarWhenPushed = false
        }else
        {
            NSLog("访问网络")
            userInter(userName: "yinyu", password: "123456")
        }
 
    }
    
    //swift 网络请求处理
    func userInter(userName:String, password:String){
        
        //创建请求体
        let param = ["moblie":"18392387159"]
        print(param)
        
        let data = try! JSONSerialization.data(withJSONObject: param, options: JSONSerialization.WritingOptions.prettyPrinted)
        
        print(data)
        
        var string = "json="
        
        let Str = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        //拼接
        string = string + Str!
        
        let Url = URL.init(string: "http://huixin.smartdot.com:9901/GoComWebService/restful/GoComeRestful/getResetCode")
        
        let request = NSMutableURLRequest.init(url: Url!)
        
        request.timeoutInterval = 30
        //请求方式，跟OC一样的
        request.httpMethod = "POST"
        request.httpBody = string.data(using: String.Encoding.utf8)
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
            if (error != nil) {
                return
            }
            else {
                //此处是具体的解析，具体请移步下面
                let json: Any = try! JSONSerialization.jsonObject(with: data!, options: [])
                if let value = JSON(json)["status"].string {
                    print("状态是：\(value)")
                }
                print(json)
            }
        }
        
        dataTask.resume()
        
        
//        let urlStr = "https://www.baidu.com/img/bd_logo1.png"
//        GALNetworkTools.shard.Galrequest(methodType: 0, urlString: urlStr, parameters: param) { () in
//            
//        }
        
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
