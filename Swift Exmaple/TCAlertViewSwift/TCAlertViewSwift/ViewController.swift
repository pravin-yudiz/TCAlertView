//
//  ViewController.swift
//  TCAlertViewSwift
//
//  Created by Technocracker on 2/23/16.
//  Copyright (c) 2016 Technocracker. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{

    var tblFeature:UITableView!
    var arrFeature:[String]!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        arrFeature = ["Toast Message Without Button","Toast Message With Button","One Button","Two Button","Multiple Button"]
        
        let Screen = UIScreen.mainScreen().bounds
        tblFeature = UITableView(frame:CGRectMake(0,10,Screen.width,Screen.height))
        tblFeature.dataSource = self
        tblFeature.delegate = self
        self.view.addSubview(tblFeature)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrFeature.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell\(indexPath.row)") as? UITableViewCell
        if cell == nil
        {
           cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier:"cell\(indexPath.row)")
        }
        cell?.textLabel?.text = arrFeature[indexPath.row]
        return cell!
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        switch indexPath.row
        {
            case 0:
                TCAlertView.sharedInstance().show("Alert", message:"This is Toast Message", buttonTitles:[], interval:3, btnClick: { (buttonIndex) -> Void in
                    print(buttonIndex)
                })
                break
            case 1:
                TCAlertView.sharedInstance().show("Alert", message:"This is Toast Message", buttonTitles:["Ok","Cancel"], interval:3, btnClick: { (buttonIndex) -> Void in
                    print(buttonIndex)
                })
                break
            case 2:
                TCAlertView.sharedInstance().show("Alert", message:"Toast Message With One Button", buttonTitles:["Ok"], btnClick: { (buttonIndex) -> Void in
                    print(buttonIndex)
                })
                break
            case 3:
                TCAlertView.sharedInstance().show("Alert", message:"Toast Message With Two Button", buttonTitles:["Ok","Cancel"], btnClick: { (buttonIndex) -> Void in
                    print(buttonIndex)
                })
                break
            case 4:
                TCAlertView.sharedInstance().show("Alert", message:"Toast Message With Multiple Button", buttonTitles:["1","2","3","4","5","6"], btnClick: { (buttonIndex) -> Void in
                    print(buttonIndex)
                })
                break
            default:
                break
                
        }
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

