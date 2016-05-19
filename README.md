#选择中国城市(省/市)


主要功能

* 搜索列表中展示的中国所有城市
* 基于定位的城市选择
* 热点城市展示(随便写了9个城市。。。)

##代码实现
###写代码之前
1. 由于定位使用的是高德定位API，需要先在高德开发者网站上申请apikey；

2. 所有view使用代码实现，并未采用storyboard创建，而是使用snapkit

###代码实现
一个tableview+2个cell

 1. tableview的实现

    class CityChooseView : UIViewController,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate,CityCellDelegate

主要就是实现一个tableview，同时在这个view中实现定位获取的城市信息
    
    func fetchLocation() {
        aMapLocationManager.requestLocationWithReGeocode(true) { (alocation, regeocode, error) -> Void in
            
            if(regeocode != nil){
                self.locationcity = regeocode.city
                self.locationprovince = regeocode.province
                self.tableView.reloadData()
            }
        }
    }


 2. 实现两个tableviewcell，一个展示定位城市和热点城市，另一个列表方式展示所有的中国城市

###使用方法

1. 配置高德apikey

    AMapLocationServices.sharedServices().apiKey = ""

2. 集成snapkit，最好使用cocoapod
3. 实现接口CityChooseViewDelegate
4. 获取国家(中国)，省，市
