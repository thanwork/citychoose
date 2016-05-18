//
//  CityCell2.swift
//  
//
//  Created by Than on 5/17/16.
//  Copyright © 2016 ThanWork. All rights reserved.
//

import UIKit

class CityCell2 : UITableViewCell{
    
    var label_city : UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
    }
    
    func initView(){
        label_city = UILabel()
        self.addSubview(label_city)
        label_city.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self).offset(8)
            make.top.equalTo(self).offset(15)
            make.bottom.equalTo(self).offset(-15)
        }
        label_city.text = "重庆市"

    }
}
