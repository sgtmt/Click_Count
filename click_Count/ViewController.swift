//
//  ViewController.swift
//  click_Count
//
//  Created by 長沢　遼 on 2016/05/17.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var a:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
    }
    @IBOutlet weak var count_number: UILabel!
    
    func downColor(){
        if  a < 0 {
            count_number.textColor = UIColor.redColor()
        }else{
            count_number.textColor = UIColor.blackColor()
        }
    }
    func ten_count(){
        if a>=1 && a%10==0  {
            count_number.textColor = UIColor.blueColor()
        }else{
            count_number.textColor = UIColor.blackColor()
        }
    }
    func backBtn_Set(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func backBtn(sender: AnyObject) {
        backBtn_Set()
    }
    func result_event(){
        count_number.text = String(a)

    }
    @IBAction func count_backBtn(sender: AnyObject) {
        backBtn_Set()
    }

    @IBAction func reset_Btn(sender: AnyObject) {
        a=0
        ten_count()
        result_event()
    }
    @IBAction func count_plus(sender: AnyObject) {
        a+=1
        if a<0 {
            downColor()
        }else{
             ten_count()
        }
       
        result_event()
            }
    @IBAction func count_down(sender: AnyObject) {
        a-=1
        downColor()
        result_event()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

