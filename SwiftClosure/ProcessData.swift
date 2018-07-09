//
//  ProcessData.swift

import UIKit

protocol callBackDelegate {
    func callbackDelegatefuc(backMsg:String)
}



typealias strReturn = (_ name:String,_ age:Int)-> ()

class ProcessData: NSObject{
    
    //定义一个闭包变量    关于赋值的时候是通过初始化这个类的时候进行闭包赋值 最后实现闭包的回调
    var  myBlock:strReturn?
    //定义一个符合改协议的代理对象
    var delegate:callBackDelegate?
    func processMethod(cmdStr:String?){
        
        //代理回调
        if((delegate) != nil){
            delegate?.callbackDelegatefuc(backMsg: "backMsg---by delegate")
        }
        
        
        
        if myBlock != nil {
            myBlock!("yang",12)
        }
        
    }
    
    
    //匿名闭包回调
    func  callbackMy(callBack:@escaping strReturn) -> Void {
        
         callBack("wilson",11)
    }
   
    
    
}
