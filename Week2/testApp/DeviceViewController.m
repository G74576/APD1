//
//  DeviceViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DeviceViewController.h"
#import "DeviceCell.h"
#import "DevicesInfo.h"
#import "DeviceList.h"
#import "DeviceTableViewController.h"

@interface DeviceViewController ()

@end

@implementation DeviceViewController
@synthesize devicesListArray, devicesTableView;

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
    //Device List Array - used to create a list of devices/badges/insignia
    devicesListArray = [[NSMutableArray alloc]init];
    
    DeviceList *rib = [[DeviceList alloc]initWithTitle:@"Ribbons/Medals Devices"];
    DeviceList *mark = [[DeviceList alloc]initWithTitle:@"Marskmanship Badges"];
    DeviceList *avi = [[DeviceList alloc]initWithTitle:@"Aviation Insignia"];
    DeviceList *par = [[DeviceList alloc]initWithTitle:@"Parachutist Insignia"];
    DeviceList *div = [[DeviceList alloc]initWithTitle:@"Diver Insignia"];
    DeviceList *eod = [[DeviceList alloc]initWithTitle:@"EOD Insignia"];
    DeviceList *ide = [[DeviceList alloc]initWithTitle:@"Indentification Badges"];
    
    [devicesListArray addObject:rib];
    [devicesListArray addObject:mark];
    [devicesListArray addObject:avi];
    [devicesListArray addObject:par];
    [devicesListArray addObject:div];
    [devicesListArray addObject:eod];
    [devicesListArray addObject:ide];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [devicesListArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DeviceCell *cell = (DeviceCell *) [devicesTableView dequeueReusableCellWithIdentifier:@"Device"];
    
    if (cell != nil)
    {
        DeviceList *deviceList = [devicesListArray objectAtIndex:indexPath.row];
        
        //NSLog(@"%@", deviceList);
        
        cell.devices.text = deviceList.deviceListName;
    }
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ToDeviceList"])
    {
        NSIndexPath *indexPath = [self.devicesTableView indexPathForSelectedRow];
        DeviceTableViewController *deviceTableViewController = segue.destinationViewController;
        
        if (deviceTableViewController != nil)
        {
            if ([indexPath row] == 0)
            {
                deviceTableViewController.deviceInt = 0;
            }
            else if ([indexPath row] == 1)
            {
                deviceTableViewController.deviceInt = 1;
            }
            else if ([indexPath row] ==2)
            {
                deviceTableViewController.deviceInt = 2;
            }
            else if ([indexPath row] ==3)
            {
                deviceTableViewController.deviceInt = 3;
            }
            else if ([indexPath row] == 4)
            {
                deviceTableViewController.deviceInt = 4;
            }
            else if ([indexPath row] == 5)
            {
                deviceTableViewController.deviceInt = 5;
            }
            else if ([indexPath row] == 6)
            {
                deviceTableViewController.deviceInt = 6;
            }
        }
    }
}

@end
