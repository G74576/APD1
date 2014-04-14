//
//  DeviceDetailViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DevicesInfo.h"
#import "DeviceTableViewController.h"

@interface DeviceDetailViewController : UIViewController
{
    IBOutlet UIImageView *dImageBig;    //Device Image
    IBOutlet UILabel *dName;            //Device Name
    IBOutlet UITextView *dDetails;      //Device Details
}

@property (strong, nonatomic)IBOutlet UIImageView *dImageBig;
@property (strong, nonatomic)IBOutlet UILabel *dName;
@property (strong, nonatomic)IBOutlet UITextView *dDetails;

@property (strong, nonatomic)DevicesInfo *dInfo;

@end
