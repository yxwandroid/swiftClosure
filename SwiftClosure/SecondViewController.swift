//
//  SecondViewController.swift
//  SwiftClosure
//
//  Created by 杨学武 on 2018/7/9.
//  Copyright © 2018年 shen. All rights reserved.
//

import Foundation
import UIKit

//定义闭包类型（特定的函数类型函数类型）
typealias InputClosureType = (String) -> Void
class SecondViewController: UIViewController{
    
    //接收上个页面传过来的闭包块
    var backClosure: InputClosureType?
    
    
    @IBAction func back(_ sender: Any) {
        
        if self.backClosure != nil {
        
                self.backClosure!("返回值")
            
        }
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        
    }
}
