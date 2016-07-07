//
//  WebviewController.swift
//  PlanItOptions
//
//  Created by Yale on 16/7/3.
//  Copyright © 2016年 Yale. All rights reserved.
//

import UIKit

class WebviewController: UIViewController {

    //使用指南的webview
    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtom = UIBarButtonItem(image: UIImage(named: "back"), style: .Plain, target: self, action: "dismiss")
        self.navigationItem.leftBarButtonItem = backButtom
        
        //设置初始加载网页
        let url = NSURL(string: "https://zoomyale.gitbooks.io/1/content/")
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismiss(){
        self.navigationController?.popViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
