//
//  DeviceTableViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DeviceTableViewController.h"
#import "DeviceViewController.h"
#import "DevicesInfo.h"
#import "DeviceCustomCell.h"
#import "DeviceDetailViewController.h"

@interface DeviceTableViewController ()

@end

@implementation DeviceTableViewController
@synthesize deviceInt, rdArray, msArray, aiArray, piArray, eiArray, idArray, diArray, deviceTable, titleLabel;

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
    //Ribbons/Medals Devices Array
    rdArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *rd01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d015.png"] dName:@"3/16in Star" dDetail:@""];
    DevicesInfo *rd02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d017.png"] dName:@"5/16in Star" dDetail:@""];
    DevicesInfo *rd03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d029.png"] dName:@"'V' Device" dDetail:@""];
    DevicesInfo *rd04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d027.png"] dName:@"'M' Device" dDetail:@""];
    DevicesInfo *rd05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d028.png"] dName:@"Hourglass Device" dDetail:@""];
    DevicesInfo *rd06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d031.png"] dName:@"Oak Leaf Cluster" dDetail:@""];
    DevicesInfo *rd07 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d032.png"] dName:@"Numeral Device" dDetail:@""];

    [rdArray addObject:rd01];
    [rdArray addObject:rd02];
    [rdArray addObject:rd03];
    [rdArray addObject:rd04];
    [rdArray addObject:rd05];
    [rdArray addObject:rd06];
    [rdArray addObject:rd07];
    
    //Marksmanship Badges Array
    msArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ms01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d021.png"] dName:@"Rifle Marksman" dDetail:@""];
    DevicesInfo *ms02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d022.png"] dName:@"Rifle Sharpshooter" dDetail:@""];
    DevicesInfo *ms03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d023.png"] dName:@"Rifle Expert" dDetail:@""];
    DevicesInfo *ms04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d024.png"] dName:@"Pistol Marksman" dDetail:@""];
    DevicesInfo *ms05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d025.png"] dName:@"Pistol Sharpshooter" dDetail:@""];
    DevicesInfo *ms06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d026.png"] dName:@"Pistol Expert" dDetail:@""];
    
    [msArray addObject:ms01];
    [msArray addObject:ms02];
    [msArray addObject:ms03];
    [msArray addObject:ms04];
    [msArray addObject:ms05];
    [msArray addObject:ms06];
    
    //Aviation Insignia Array
    aiArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ai01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d001.png"] dName:@"Naval Aviator" dDetail:@""];
    DevicesInfo *ai02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d002.png"] dName:@"Naval Flight Officer" dDetail:@""];
    DevicesInfo *ai03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d003.png"] dName:@"Marine Aerial Navigator" dDetail:@""];
    DevicesInfo *ai04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d004.png"] dName:@"Naval Aviation Observer" dDetail:@""];
    DevicesInfo *ai05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d005.png"] dName:@"Navy Aircrew" dDetail:@""];
    DevicesInfo *ai06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d006.png"] dName:@"Marine Corps Combat Aircrew" dDetail:@""];
    
    [aiArray addObject:ai01];
    [aiArray addObject:ai02];
    [aiArray addObject:ai03];
    [aiArray addObject:ai04];
    [aiArray addObject:ai05];
    [aiArray addObject:ai06];
    
    //Parachutist Insignia Array
    piArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *pi01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d013.png"] dName:@"Naval Parachutist" dDetail:@""];
    DevicesInfo *pi02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d014.png"] dName:@"Basic Parachutist" dDetail:@""];
    
    [piArray addObject:pi01];
    [piArray addObject:pi02];
    
    //Diver Insignia Array
    diArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *di01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d007.png"] dName:@"Master Diver" dDetail:@""];
    DevicesInfo *di02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d008.png"] dName:@"Diving Medical Technician" dDetail:@""];
    DevicesInfo *di03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d009.png"] dName:@"First Class Diver" dDetail:@""];
    DevicesInfo *di04 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d010.png"] dName:@"Combat Diver" dDetail:@""];
    DevicesInfo *di05 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d011.png"] dName:@"Second Class Diver" dDetail:@""];
    DevicesInfo *di06 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d012.png"] dName:@"Scuba Diver" dDetail:@""];
    
    [diArray addObject:di01];
    [diArray addObject:di02];
    [diArray addObject:di03];
    [diArray addObject:di04];
    [diArray addObject:di05];
    [diArray addObject:di06];
    
    //EOD Insigina Array
    eiArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *ei01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d018.png"] dName:@"Basic EOD" dDetail:@""];
    DevicesInfo *ei02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d019.png"] dName:@"Senior EOD" dDetail:@""];
    DevicesInfo *ei03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d020.png"] dName:@"Master EOD" dDetail:@""];
    
    [eiArray addObject:ei01];
    [eiArray addObject:ei02];
    [eiArray addObject:ei03];
    
    //Identification Badges Array
    idArray = [[NSMutableArray alloc]init];
    
    DevicesInfo *id01 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d033.png"] dName:@"MC MP Badge" dDetail:@""];
    DevicesInfo *id02 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d034.png"] dName:@"MC MP Corrections Badge" dDetail:@""];
    DevicesInfo *id03 = [[DevicesInfo alloc]initWithTitle:[UIImage imageNamed:@"d035.png"] dName:@"MC CID Agent Badge" dDetail:@""];
    
    [idArray addObject:id01];
    [idArray addObject:id02];
    [idArray addObject:id03];
    
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
    if (deviceInt == 0)
    {
        return [rdArray count];
    }
    else if (deviceInt == 1)
    {
        return [msArray count];
    }
    else if (deviceInt == 2)
    {
        return [aiArray count];
    }
    else if (deviceInt == 3)
    {
        return [piArray count];
    }
    else if (deviceInt == 4)
    {
        return [diArray count];
    }
    else if (deviceInt == 5)
    {
        return [eiArray count];
    }
    else if (deviceInt == 6)
    {
        return [idArray count];
    }
    [self.deviceTable reloadData];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DeviceCustomCell *cell = (DeviceCustomCell *) [deviceTable dequeueReusableCellWithIdentifier:@"DeviceDetails"];
    
    if (cell != nil)
    {
        if (deviceInt == 0)
        {
            titleLabel.text = [NSString stringWithFormat:@"Ribbons/Medals Devices"];
            DevicesInfo *devicesInfo = [rdArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 1)
        {
            titleLabel.text = [NSString stringWithFormat:@"Marksmanship Badges"];
            DevicesInfo *devicesInfo = [msArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 2)
        {
            titleLabel.text = [NSString stringWithFormat:@"Aviation Insignia"];
            DevicesInfo *devicesInfo = [aiArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 3)
        {
            titleLabel.text = [NSString stringWithFormat:@"Parachutist Insignia"];
            DevicesInfo *devicesInfo = [piArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 4)
        {
            titleLabel.text = [NSString stringWithFormat:@"Diver Insignia"];
            DevicesInfo *devicesInfo = [diArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 5)
        {
            titleLabel.text = [NSString stringWithFormat:@"EOD Insinia"];
            DevicesInfo *devicesInfo = [eiArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
        else if (deviceInt == 6)
        {
            titleLabel.text = [NSString stringWithFormat:@"Identification Badges"];
            DevicesInfo *devicesInfo = [idArray objectAtIndex:indexPath.row];
            cell.deviceImageView.image = devicesInfo.deviceImage;
            cell.deviceLabel.text = devicesInfo.deviceName;
        }
    }
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DeviceDetails"])
    {
        NSIndexPath *indexPath = [self.deviceTable indexPathForSelectedRow];
        DeviceDetailViewController *deviceDetailViewController = segue.destinationViewController;
        
        if (deviceDetailViewController != nil)
        {
            if (deviceInt == 0)
            {
                DevicesInfo *rdInfo = [rdArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = rdInfo;
            }
            else if (deviceInt == 1)
            {
                DevicesInfo *msInfo = [msArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = msInfo;
            }
            else if (deviceInt == 2)
            {
                DevicesInfo *aiInfo = [aiArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = aiInfo;
            }
            else if (deviceInt ==3)
            {
                DevicesInfo *piInfo = [piArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = piInfo;
            }
            else if (deviceInt == 4)
            {
                DevicesInfo *diInfo = [diArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = diInfo;
            }
            else if (deviceInt == 5)
            {
                DevicesInfo *eiInfo = [eiArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = eiInfo;
            }
            else if (deviceInt == 6)
            {
                DevicesInfo *idInfo = [idArray objectAtIndex:indexPath.row];
                deviceDetailViewController.dInfo = idInfo;
            }
        }
    }
}


@end
