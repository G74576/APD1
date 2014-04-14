//
//  RibbonViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RibbonViewController.h"
#import "RibbonCustomCell.h"
#import "RibbonsInfo.h"
#import "RibbonDetailViewController.h"

@interface RibbonViewController ()

@end

@implementation RibbonViewController
@synthesize ribbonsArray, ribbonTableView;

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
    //Ribbons Array - ribbons are loaded in the order they would be worn
    ribbonsArray = [[NSMutableArray alloc]init];
    
    RibbonsInfo *ribbon01 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"001.png"] rName:@"Medal of Honor" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon02 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"002.png"] rName:@"Navy Cross" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon03 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"003.png"] rName:@"Defense Distinguished Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon04 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"004.png"] rName:@"Navy Distinguished Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon05 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"005.png"] rName:@"Coast Guard Distinguished Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon06 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"006.png"] rName:@"Silver Star" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon07 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"007.png"] rName:@"Defense Superior Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon08 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"008.png"] rName:@"Legion of Merit" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon09 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"009.png"] rName:@"Distinguished Flying Cross" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon10 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"010.png"] rName:@"Navy & Marine Corps Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon11 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"011.png"] rName:@"Coast Guard Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon12 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"012.png"] rName:@"Bronze Star" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon13 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"013.png"] rName:@"Purple Heart" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon14 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"014.png"] rName:@"Defense Meritorious Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon15 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"015.png"] rName:@"Meritorious Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon16 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"016.png"] rName:@"Air Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon17 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"017.png"] rName:@"Joint Service Commendation Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon18 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"018.png"] rName:@"Navy & Marine Corps Commendation Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon19 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"019.png"] rName:@"Coast Guard Commendation Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon20 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"020.png"] rName:@"Joint Service Achievement Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon21 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"021.png"] rName:@"Navy & Marine Corps Achievement Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon22 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"022.png"] rName:@"Coast Guard Achievement Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon23 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"023.png"] rName:@"Combat Action Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon24 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"024.png"] rName:@"Presidential Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon25 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"025.png"] rName:@"Joint Meritorious Unit Award" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon26 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"026.png"] rName:@"Navy Unit Commendation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon27 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"027.png"] rName:@"Coast Guard Unit Commendation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon28 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"028.png"] rName:@"Navy Meritorious Unit Commendation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon29 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"029.png"] rName:@"Coast Guard Meritorious Unit Commendation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon30 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"030.png"] rName:@"Navy 'E'" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon31 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"031.png"] rName:@"Gold Lifesaving Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon32 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"032.png"] rName:@"Silver Lifesaving Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon33 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"033.png"] rName:@"Merchant Marine Distinguished Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon34 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"034.png"] rName:@"Merchant Marine Meritorious Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon35 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"035.png"] rName:@"Merchang Marine Mariners Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon36 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"036.png"] rName:@"POW Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon37 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"037.png"] rName:@"Marine Corps Good Conduct Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon38 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"038.png"] rName:@"Navy Good Conduct Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon39 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"039.png"] rName:@"Coast Guard Good Conduct Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon40 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"040.png"] rName:@"Sel. Marine Corps Reserve Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon41 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"041.png"] rName:@"Navy Reserve Meritorious Service" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon42 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"042.png"] rName:@"Coast Guard Reserve Good Conduct Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon43 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"043.png"] rName:@"Fleet Marine Force Service" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon44 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"044.png"] rName:@"Marine Corps Expeditionary Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon45 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"045.png"] rName:@"Navy Expeditionary Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon46 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"046.png"] rName:@"National Defense Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon47 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"047.png"] rName:@"Korean Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon48 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"048.png"] rName:@"Antartic Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon49 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"049.png"] rName:@"Armed Forces Expeditionary Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon50 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"050.png"] rName:@"Vietnam Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon51 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"051.png"] rName:@"SW Asia Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon52 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"052.png"] rName:@"Kosovo Campaign Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon53 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"053.png"] rName:@"Afghanistan Campaign Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon54 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"054.png"] rName:@"Iraq Campaign Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon55 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"055.png"] rName:@"Global War on Terrorism Expeditionary Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon56 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"056.png"] rName:@"Global War on Terrorism Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon57 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"057.png"] rName:@"Korean Defense Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon58 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"058.png"] rName:@"Armed Forces Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon59 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"059.png"] rName:@"Humanitarian Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon60 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"060.png"] rName:@"Military Outstanding Volunteer Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon61 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"061.png"] rName:@"Sea Service Deployment Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon62 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"062.png"] rName:@"Coast Guard Sea Service Deployment Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon63 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"063.png"] rName:@"Naval Artic Service Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon64 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"064.png"] rName:@"Coast Guard Artic Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon65 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"065.png"] rName:@"Navy/Marine Corps Overseas Service" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon66 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"066.png"] rName:@"USMC Recruiting Service Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon67 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"067.png"] rName:@"Navy Recruiting Service Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon68 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"068.png"] rName:@"USMC Drill Instructor Service Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon69 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"069.png"] rName:@"Marine Security Guard" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon70 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"070.png"] rName:@"Coast Guard Spec. Operations Service Ribbon" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon71 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"071.png"] rName:@"Armed Forces Reserve Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon72 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"072.png"] rName:@"Merchant Marine Gallant Ship Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon73 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"073.png"] rName:@"Merchant Marine Defense Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon74 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"074.png"] rName:@"Merchant Marine Combat Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon75 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"075.png"] rName:@"Merchant Marine Atlantic War Zone Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon76 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"076.png"] rName:@"Merchant Marine Mediterranean War Zone Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon77 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"077.png"] rName:@"Merchant Marine Pacific War Zone Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon78 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"078.png"] rName:@"Merchant Marine WW II Victory Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon79 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"079.png"] rName:@"Merchant Marine Korean Service Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon80 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"080.png"] rName:@"Merchant Marine Vietnam Service Bar" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon81 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"081.png"] rName:@"Philippines Republic Presidential Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon82 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"082.png"] rName:@"Republic of Korea Presidential Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon83 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"083.png"] rName:@"Republic of Vietnam Presidential Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon84 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"084.png"] rName:@"Republic of Viet. Gallantry Cross Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon85 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"085.png"] rName:@"Republic of Vietnam Cival Action Unit Citation" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon86 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"086.png"] rName:@"United Nations Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon87 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"087.png"] rName:@"United Nations Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon88 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"088.png"] rName:@"NATO Meritorious Service Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon89 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"089.png"] rName:@"NATO Medal - Yugoslavia" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon90 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"090.png"] rName:@"NATO Medal - Kosovo" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon91 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"091.png"] rName:@"NATO Medal - Balkins" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon92 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"092.png"] rName:@"NATO Medal - ISAF" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon93 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"093.png"] rName:@"Multi-Nation Forces and Observer Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon94 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"094.png"] rName:@"Inter-American Defense Board Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon95 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"095.png"] rName:@"Republic of Vietnam Campaign Medal" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon96 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"096.png"] rName:@"Kuwait Liberation (Saudi Arabia)" rDetail:@"<#string#>"];
    RibbonsInfo *ribbon97 = [[RibbonsInfo alloc]initWithTitle:[UIImage imageNamed:@"097.png"] rName:@"Kuwait Liberation (Kuwait)" rDetail:@"<#string#>"];
    
    [ribbonsArray addObject:ribbon01];
    [ribbonsArray addObject:ribbon02];
    [ribbonsArray addObject:ribbon03];
    [ribbonsArray addObject:ribbon04];
    [ribbonsArray addObject:ribbon05];
    [ribbonsArray addObject:ribbon06];
    [ribbonsArray addObject:ribbon07];
    [ribbonsArray addObject:ribbon08];
    [ribbonsArray addObject:ribbon09];
    [ribbonsArray addObject:ribbon10];
    [ribbonsArray addObject:ribbon11];
    [ribbonsArray addObject:ribbon12];
    [ribbonsArray addObject:ribbon13];
    [ribbonsArray addObject:ribbon14];
    [ribbonsArray addObject:ribbon15];
    [ribbonsArray addObject:ribbon16];
    [ribbonsArray addObject:ribbon17];
    [ribbonsArray addObject:ribbon18];
    [ribbonsArray addObject:ribbon19];
    [ribbonsArray addObject:ribbon20];
    [ribbonsArray addObject:ribbon21];
    [ribbonsArray addObject:ribbon22];
    [ribbonsArray addObject:ribbon23];
    [ribbonsArray addObject:ribbon24];
    [ribbonsArray addObject:ribbon25];
    [ribbonsArray addObject:ribbon26];
    [ribbonsArray addObject:ribbon27];
    [ribbonsArray addObject:ribbon28];
    [ribbonsArray addObject:ribbon29];
    [ribbonsArray addObject:ribbon30];
    [ribbonsArray addObject:ribbon31];
    [ribbonsArray addObject:ribbon32];
    [ribbonsArray addObject:ribbon33];
    [ribbonsArray addObject:ribbon34];
    [ribbonsArray addObject:ribbon35];
    [ribbonsArray addObject:ribbon36];
    [ribbonsArray addObject:ribbon37];
    [ribbonsArray addObject:ribbon38];
    [ribbonsArray addObject:ribbon39];
    [ribbonsArray addObject:ribbon40];
    [ribbonsArray addObject:ribbon41];
    [ribbonsArray addObject:ribbon42];
    [ribbonsArray addObject:ribbon43];
    [ribbonsArray addObject:ribbon44];
    [ribbonsArray addObject:ribbon45];
    [ribbonsArray addObject:ribbon46];
    [ribbonsArray addObject:ribbon47];
    [ribbonsArray addObject:ribbon48];
    [ribbonsArray addObject:ribbon49];
    [ribbonsArray addObject:ribbon50];
    [ribbonsArray addObject:ribbon51];
    [ribbonsArray addObject:ribbon52];
    [ribbonsArray addObject:ribbon53];
    [ribbonsArray addObject:ribbon54];
    [ribbonsArray addObject:ribbon55];
    [ribbonsArray addObject:ribbon56];
    [ribbonsArray addObject:ribbon57];
    [ribbonsArray addObject:ribbon58];
    [ribbonsArray addObject:ribbon59];
    [ribbonsArray addObject:ribbon60];
    [ribbonsArray addObject:ribbon61];
    [ribbonsArray addObject:ribbon62];
    [ribbonsArray addObject:ribbon63];
    [ribbonsArray addObject:ribbon64];
    [ribbonsArray addObject:ribbon65];
    [ribbonsArray addObject:ribbon66];
    [ribbonsArray addObject:ribbon67];
    [ribbonsArray addObject:ribbon68];
    [ribbonsArray addObject:ribbon69];
    [ribbonsArray addObject:ribbon70];
    [ribbonsArray addObject:ribbon71];
    [ribbonsArray addObject:ribbon72];
    [ribbonsArray addObject:ribbon73];
    [ribbonsArray addObject:ribbon74];
    [ribbonsArray addObject:ribbon75];
    [ribbonsArray addObject:ribbon76];
    [ribbonsArray addObject:ribbon77];
    [ribbonsArray addObject:ribbon78];
    [ribbonsArray addObject:ribbon79];
    [ribbonsArray addObject:ribbon80];
    [ribbonsArray addObject:ribbon81];
    [ribbonsArray addObject:ribbon82];
    [ribbonsArray addObject:ribbon83];
    [ribbonsArray addObject:ribbon84];
    [ribbonsArray addObject:ribbon85];
    [ribbonsArray addObject:ribbon86];
    [ribbonsArray addObject:ribbon87];
    [ribbonsArray addObject:ribbon88];
    [ribbonsArray addObject:ribbon89];
    [ribbonsArray addObject:ribbon90];
    [ribbonsArray addObject:ribbon91];
    [ribbonsArray addObject:ribbon92];
    [ribbonsArray addObject:ribbon93];
    [ribbonsArray addObject:ribbon94];
    [ribbonsArray addObject:ribbon95];
    [ribbonsArray addObject:ribbon96];
    [ribbonsArray addObject:ribbon97];
    
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
    return [ribbonsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RibbonCustomCell *cell = (RibbonCustomCell *) [ribbonTableView dequeueReusableCellWithIdentifier:@"RibbonDetail"];
    
    if (cell != nil)
    {
        RibbonsInfo *ribbonsInfo = [ribbonsArray objectAtIndex:indexPath.row];
        
        //NSLog(@"%@", ribbonsInfo);
        
        //Ribbon Image
        cell.ribbonImageView.image = ribbonsInfo.ribbonImage;
        cell.ribbonLabel.text = ribbonsInfo.ribbonName;
    }
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"RibbonDetailView"])
    {
        NSIndexPath *indexPath = [self.ribbonTableView indexPathForSelectedRow];
        RibbonDetailViewController *ribbonDetailViewController = segue.destinationViewController;
        RibbonsInfo *ribbonsInfo = [ribbonsArray objectAtIndex:indexPath.row];
        
        if (ribbonDetailViewController != nil)
        {
            ribbonDetailViewController.ribbonsDetails = ribbonsInfo;
        }
    }
}

@end
