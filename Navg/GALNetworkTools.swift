//
//  GALNetworkTools.swift
//  Navg
//
//  Created by love on 2017/8/9.
//  Copyright © 2017年 guanal. All rights reserved.
//

import UIKit
import AFNetworking

//定义枚举类型
enum GALRequestType:Int {
    case GET
    case POST
}

class GALNetworkTools: AFHTTPSessionManager {
    static let shard : GALNetworkTools = {
        let tools = GALNetworkTools()
        tools.responseSerializer.acceptableContentTypes = [
            "application/json",
            "text/html",
            "text/plain",
            "image/jpeg",
            "image/png",
            "application/octet-stream",
            "text/json",
            ] as Set
        return tools
    }()
    
}


// MARK -封装请求方式
extension GALNetworkTools{
    // 请求JSON数据
    // 将成功和失败的回调写在一个逃逸的闭包中
    func Galrequest(methodType: GALRequestType, urlString:String, parameters:[String: Any], requestBlock:@escaping([String : Any]?,Error?)-> ()) {
        
        // 定义请求结果回调包
        // 成功
        
        let successBlock = {(task: URLSessionDataTask, responseObj: Any?)in
            requestBlock(responseObj as! [String : Any], nil)
        }
        
        // 失败
        let failBlock = {(task: URLSessionDataTask?, error:Error)in
requestBlock(nil, error)
        }
        
        // 发送请求
        if methodType == .GET {
            get(urlString, parameters:parameters, progress:nil, success:successBlock , failure:failBlock)
        }else if methodType == .POST{
            post(urlString, parameters:parameters, progress:nil, success:successBlock, failure:failBlock)
        }
        
    }
}











