//
//  ViewController.swift

import UIKit

class ViewController: UIViewController,callBackDelegate{
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let process=ProcessData()
        process.delegate=self
  
     
        
//        process.callbackMy(callBack:{
//                (name,age)
//                in
//                print(name)
//                print(age)
//        })
//
       
        
        
        
        process.myBlock = {
            (name:String ,age:Int) -> () in
             print(name)
             print(age)
        }
        
        
        //执行函数
        process.processMethod(cmdStr: "aaa")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //delegate回调
    func callbackDelegatefuc(backMsg:String){
        print(backMsg)
    }
    
    @IBAction func btn(_ sender: Any) {
        
        
        let secondViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
//        //实现回调，获取回调回来的值 （闭包）
        secondViewController.backClosure = {
            (backStr: String) -> Void in

            print(backStr)
        }


         self.present(secondViewController, animated: true, completion: nil)
        
        print("first")
    }
    //    var mycall ={
//        (name,age)
//        in
//        print(name)
//        print(age)
//    }
//    
}




