//
//  DeviceViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *devicesListArray;
}

//Table View
@property (strong, nonatomic)IBOutlet UITableView *devicesTableView;

//Devices List Array
@property (strong, nonatomic)NSMutableArray *devicesListArray;

@end
