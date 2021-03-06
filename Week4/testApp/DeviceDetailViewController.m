//
//  DeviceDetailViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DeviceDetailViewController.h"
#import "DevicesInfo.h"
#import "DeviceTableViewController.h"

@interface DeviceDetailViewController ()

@end

@implementation DeviceDetailViewController
@synthesize dDetails, dImageBig, dInfo, dName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [dDetails setTextContainerInset:UIEdgeInsetsMake(10, 15, 10, 15)];
    dImageBig.image = dInfo.deviceImage;
    dName.text = dInfo.deviceName;
    dDetails.text = dInfo.deviceDetail;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
