//
//  CityCell.swift
//  
//
//  Created by Than on 5/17/16.
//  Copyright © 2016 ThanWork. All rights reserved.
//

import UIKit

class CityCell : UITableViewCell{
    var label_locationCity : UILabel!
    var btn_locationCity : UIButton!
    var view1 : UIView!
    var view2 : UIView!
    
    var activityIndicator: UIActivityIndicatorView!
    
    var locationcity = ""{
        didSet{
            btn_locationCity.setTitle(locationcity, forState: UIControlState.Normal)
            if(locationcity == ""){
                activityIndicator.startAnimating()
            }else{
                activityIndicator.stopAnimating()
            }
        }
    }
    var locationprovince = ""
    
    var label_hotCity : UILabel!
    
    var btn_hot1 : UIButton!
    var btn_hot2 : UIButton!
    var btn_hot3 : UIButton!
    var btn_hot4 : UIButton!
    var btn_hot5 : UIButton!
    var btn_hot6 : UIButton!
    var btn_hot7 : UIButton!
    var btn_hot8 : UIButton!
    var btn_hot9 : UIButton!
    
    var delegate : CityCellDelegate!
    
    
    
    var hotcityList : [String]!{
        didSet{
            btn_hot1.setTitle(hotcityList[0], forState: UIControlState.Normal)
            btn_hot2.setTitle(hotcityList[1], forState: UIControlState.Normal)
            btn_hot3.setTitle(hotcityList[2], forState: UIControlState.Normal)
            btn_hot4.setTitle(hotcityList[3], forState: UIControlState.Normal)
            btn_hot5.setTitle(hotcityList[4], forState: UIControlState.Normal)
            btn_hot6.setTitle(hotcityList[5], forState: UIControlState.Normal)
            btn_hot7.setTitle(hotcityList[6], forState: UIControlState.Normal)
            btn_hot8.setTitle(hotcityList[7], forState: UIControlState.Normal)
            btn_hot9.setTitle(hotcityList[8], forState: UIControlState.Normal)
        }
    }
    var hotcityprovince : [String]!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
    }
    
    func initView(){
        label_locationCity = UILabel()
        btn_locationCity = UIButton()
        view1 = UIView()
        view2 = UIView()
        
        label_hotCity = UILabel()
        btn_hot1 = UIButton()
        btn_hot2 = UIButton()
        btn_hot3 = UIButton()
        btn_hot4 = UIButton()
        btn_hot5 = UIButton()
        btn_hot6 = UIButton()
        btn_hot7 = UIButton()
        btn_hot8 = UIButton()
        btn_hot9 = UIButton()
        
        self.addSubview(label_locationCity)
        self.addSubview(btn_locationCity)
        self.addSubview(label_hotCity)
        self.addSubview(btn_hot1)
        self.addSubview(btn_hot2)
        self.addSubview(btn_hot3)
        self.addSubview(btn_hot4)
        self.addSubview(btn_hot5)
        self.addSubview(btn_hot6)
        self.addSubview(btn_hot7)
        self.addSubview(btn_hot8)
        self.addSubview(btn_hot9)
        
        label_locationCity.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
        }
        label_locationCity.text = "已定为城市"
        
        btn_locationCity.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.height.equalTo(40)
            make.top.equalTo(label_locationCity.snp_bottom).offset(8)
        }
        btn_locationCity.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
//        btn_locationCity.setTitle("成都市", forState: UIControlState.Normal)
        btn_locationCity.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        //展位
        view1 = UIView(frame: CGRectZero)
        self.addSubview(view1)
        view1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_locationCity.snp_right).offset(8)
            make.centerY.equalTo(btn_locationCity)
            make.width.equalTo(btn_locationCity)
            make.height.equalTo(btn_locationCity)
        }
        view2 = UIView(frame: CGRectZero)
        self.addSubview(view2)
        view2.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(view1.snp_right).offset(8)
            make.centerY.equalTo(btn_locationCity)
            make.width.equalTo(btn_locationCity)
            make.height.equalTo(btn_locationCity)
            make.right.equalTo(self).offset(-8)
            
        }
        activityIndicator = UIActivityIndicatorView(frame:CGRectZero)
        self.addSubview(activityIndicator)
        activityIndicator.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(view1)
        }
        activityIndicator.activityIndicatorViewStyle = .Gray

        
        label_hotCity.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.top.equalTo(btn_locationCity.snp_bottom).offset(8)
        }
        label_hotCity.text = "热门城市"
        
        btn_hot1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.height.equalTo(40)
            make.top.equalTo(label_hotCity.snp_bottom).offset(8)
        }
        btn_hot1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot1.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot1.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot2.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot1.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot1)
            make.width.equalTo(btn_hot1)
        }
        btn_hot2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot2.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot2.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot3.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot2.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot1)
            make.width.equalTo(btn_hot1)
            make.right.equalTo(self).offset(-8)
        }
        btn_hot3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot3.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot3.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot4.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.height.equalTo(40)
            make.top.equalTo(btn_hot1.snp_bottom).offset(8)
        }
        btn_hot4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot4.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot4.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot5.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot4.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot4)
            make.width.equalTo(btn_hot4)
        }
        btn_hot5.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot5.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot5.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot6.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot5.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot4)
            make.width.equalTo(btn_hot4)
            make.right.equalTo(self).offset(-8)
        }
        btn_hot6.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot6.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot6.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot7.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.height.equalTo(40)
            make.top.equalTo(btn_hot4.snp_bottom).offset(8)
            make.bottom.equalTo(self).offset(-8)
        }
        btn_hot7.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot7.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot7.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot8.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot7.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot7)
            make.width.equalTo(btn_hot7)
        }
        btn_hot8.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot8.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot8.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_hot9.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(btn_hot8.snp_right).offset(8)
            make.height.equalTo(40)
            make.centerY.equalTo(btn_hot7)
            make.width.equalTo(btn_hot7)
            make.right.equalTo(self).offset(-8)
        }
        btn_hot9.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn_hot9.setTitle("北京市", forState: UIControlState.Normal)
        btn_hot9.titleLabel?.font = UIFont.systemFontOfSize(18)
        
        btn_locationCity.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_locationCity.tag = 0
        btn_hot1.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot1.tag = 1
        btn_hot2.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot2.tag = 2
        btn_hot3.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot3.tag = 3
        btn_hot4.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot4.tag = 4
        btn_hot5.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot5.tag = 5
        btn_hot6.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot6.tag = 6
        btn_hot7.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot7.tag = 7
        btn_hot8.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot8.tag = 8
        btn_hot9.addTarget(self, action: "chooseCity:", forControlEvents: UIControlEvents.TouchUpInside)
        btn_hot9.tag = 9
    }
    
    func chooseCity(sender : UIButton){
        if(sender.tag == 0){
            delegate.chooseCity("中国", province: locationprovince, city: locationcity)
        }else{
            delegate.chooseCity("中国", province: hotcityprovince[sender.tag-1], city: hotcityList[sender.tag-1])
        }
    }
    
}

public protocol CityCellDelegate : NSObjectProtocol{
    func chooseCity(country : String,province : String,city : String)
}


