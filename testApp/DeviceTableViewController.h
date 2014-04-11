//
//  DeviceTableViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeviceCustomCell.h"
#import "DeviceViewController.h"
#import "DevicesInfo.h"

@interface DeviceTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UILabel *titleLabel;    //Poupulates the list title
    NSMutableArray *rdArray;         //Ribbons/Medals Devices array
    NSMutableArray *msArray;         //Marksmanship Badges Array
    NSMutableArray *aiArray;         //Aviation Insignia Array
    NSMutableArray *piArray;         //Parachutist Insignia Array
    NSMutableArray *diArray;         //Diver Insignia Array
    NSMutableArray *eiArray;         //EOD Insignia Array
    NSMutableArray *idArray;         //Identification Array
    int deviceInt;                   //Used to know which row is selected to know which array to use
}

//Heading
@property (strong, nonatomic)IBOutlet UILabel *titleLabel;

//Tableview
@property (strong, nonatomic)IBOutlet UITableView *deviceTable;

//Arrays
@property (strong, nonatomic)NSMutableArray *rdArray;
@property (strong, nonatomic)NSMutableArray *msArray;
@property (strong, nonatomic)NSMutableArray *aiArray;
@property (strong, nonatomic)NSMutableArray *piArray;
@property (strong, nonatomic)NSMutableArray *diArray;
@property (strong, nonatomic)NSMutableArray *eiArray;
@property (strong, nonatomic)NSMutableArray *idArray;

@property int deviceInt;

@end
