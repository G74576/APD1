//
//  RankTableViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RankTableViewController.h"
#import "RankViewController.h"
#import "RankInfo.h"
#import "RankCustomCell.h"
#import "RankDetailsViewController.h"

@interface RankTableViewController ()

@end

@implementation RankTableViewController
@synthesize neArray, nwArray, noArray, ueArray, uwArray, uoArray, rankTableView, ranksInt, titleLabel;

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
    //USMC Enlisted Rank Array
    ueArray = [[NSMutableArray alloc]init];
    
    RankInfo *ue01 = [[RankInfo alloc]initWithTitle:nil rcImage:nil raName:@"Private" rate:@"PVT / E-1" raDetail:@""];
    RankInfo *ue02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue01.png"] rcImage:nil raName:@"Private First Class" rate:@"PFC / E-2" raDetail:@""];
    RankInfo *ue03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue02.png"] rcImage:nil raName:@"Lance Corporal" rate:@"LCPL / E-3" raDetail:@""];
    RankInfo *ue04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue03.png"] rcImage:nil raName:@"Corporal" rate:@"CPL / E-4" raDetail:@""];
    RankInfo *ue05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue04.png"] rcImage:nil raName:@"Sergeant" rate:@"SGT / E-5" raDetail:@""];
    RankInfo *ue06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue05.png"] rcImage:nil raName:@"Staff Sergeant" rate:@"SSGT / E-6" raDetail:@""];
    RankInfo *ue07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue06.png"] rcImage:nil raName:@"Gunnery Sergeant" rate:@"GYSGT / E-7" raDetail:@""];
    RankInfo *ue08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue08.png"] rcImage:nil raName:@"Master Sergeant" rate:@"MSGT / E-8" raDetail:@""];
    RankInfo *ue09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue07.png"] rcImage:nil raName:@"First Sergeant" rate:@"1STSGT / E-8" raDetail:@""];
    RankInfo *ue10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue09.png"] rcImage:nil raName:@"Master Gunnery Sergeant" rate:@"MGYSGT / E-9" raDetail:@""];
    RankInfo *ue11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue10.png"] rcImage:nil raName:@"Sergeant Major" rate:@"SGTMAJ / E-9" raDetail:@""];
    RankInfo *ue12 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue11.png"] rcImage:nil raName:@"Sergeant Major of the Marine Corps" rate:@"SGTMAJMARCOR / E-9" raDetail:@""];
    
    [ueArray addObject:ue01];
    [ueArray addObject:ue02];
    [ueArray addObject:ue03];
    [ueArray addObject:ue04];
    [ueArray addObject:ue05];
    [ueArray addObject:ue06];
    [ueArray addObject:ue07];
    [ueArray addObject:ue08];
    [ueArray addObject:ue09];
    [ueArray addObject:ue10];
    [ueArray addObject:ue11];
    [ueArray addObject:ue12];
    
    //USMC Officer Rank Array
    uoArray = [[NSMutableArray alloc]init];
    
    RankInfo *uo01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u001.png"] rcImage:nil raName:@"Second Lieutenant" rate:@"2NDLT / O-1" raDetail:@""];
    RankInfo *uo02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u002.png"] rcImage:nil raName:@"First Lieutenant" rate:@"1STLT / O-2" raDetail:@""];
    RankInfo *uo03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u003.png"] rcImage:nil raName:@"Captain" rate:@"CAPT / O-3" raDetail:@""];
    RankInfo *uo04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u004.png"] rcImage:nil raName:@"Major" rate:@"MAJ / O-4" raDetail:@""];
    RankInfo *uo05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u005.png"] rcImage:nil raName:@"Lieutenant Colonel" rate:@"LTCOL / O-5" raDetail:@""];
    RankInfo *uo06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u006.png"] rcImage:nil raName:@"Colonel" rate:@"COL / O-6" raDetail:@""];
    RankInfo *uo07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u007.png"] rcImage:nil raName:@"Brigadier General" rate:@"BGEN / O-7" raDetail:@""];
    RankInfo *uo08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u008.png"] rcImage:nil raName:@"Major General" rate:@"MAJGEN / O-8" raDetail:@""];
    RankInfo *uo09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u009.png"] rcImage:nil raName:@"Lieutenant General" rate:@"LTGEN / O-9" raDetail:@""];
    RankInfo *uo10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u010.png"] rcImage:nil raName:@"General" rate:@"GEN / O-10" raDetail:@""];
    
    [uoArray addObject:uo01];
    [uoArray addObject:uo02];
    [uoArray addObject:uo03];
    [uoArray addObject:uo04];
    [uoArray addObject:uo05];
    [uoArray addObject:uo06];
    [uoArray addObject:uo07];
    [uoArray addObject:uo08];
    [uoArray addObject:uo09];
    [uoArray addObject:uo10];
    
    //USMC Warrant Officer Rank Array
    uwArray = [[NSMutableArray alloc]init];
    
    RankInfo *uw01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u011.png"] rcImage:nil raName:@"Warrant Officer 1" rate:@"WO1 / W-1" raDetail:@""];
    RankInfo *uw02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u012.png"] rcImage:nil raName:@"Chief Warrant Officer 2" rate:@"CWO2 / W-2" raDetail:@""];
    RankInfo *uw03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u013.png"] rcImage:nil raName:@"Chief Warrant Officer 3" rate:@"CWO3 / W-3" raDetail:@""];
    RankInfo *uw04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u014.png"] rcImage:nil raName:@"Chief Warrant Officer 4" rate:@"CWO4 / W-4" raDetail:@""];
    RankInfo *uw05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u015.png"] rcImage:nil raName:@"Chief Warrant Officer 5" rate:@"CWO5 / W-5" raDetail:@""];
    RankInfo *uw06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u016.png"] rcImage:nil raName:@"Marine Gunner" rate:@"CWO2 - CWO5" raDetail:@""];
    
    [uwArray addObject:uw01];
    [uwArray addObject:uw02];
    [uwArray addObject:uw03];
    [uwArray addObject:uw04];
    [uwArray addObject:uw05];
    [uwArray addObject:uw06];
    
    //Navy Enlisted Rank Array
    neArray = [[NSMutableArray alloc]init];
    
    RankInfo *ne01 = [[RankInfo alloc]initWithTitle:nil rcImage:nil raName:@"Seaman Recruit" rate:@"SR / E-1" raDetail:@""];
    RankInfo *ne02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne01.png"] rcImage:nil raName:@"Seaman Apprentice" rate:@"SA / E-2" raDetail:@""];
    RankInfo *ne03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne02.png"] rcImage:nil raName:@"Seaman" rate:@"SN / E-3" raDetail:@""];
    RankInfo *ne04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne03.png"] rcImage:nil raName:@"Petty Officer Third Class" rate:@"PO3 / E-4" raDetail:@""];
    RankInfo *ne05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne04.png"] rcImage:nil raName:@"Petty Officer Second Class" rate:@"PO2 / E-5" raDetail:@""];
    RankInfo *ne06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne05.png"] rcImage:nil raName:@"Petty Officer First Class" rate:@"PO1 / E-6" raDetail:@""];
    RankInfo *ne07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne06.png"] rcImage:[UIImage imageNamed:@"ne07.png"] raName:@"Chief Petty Officer" rate:@"CPO / E-7" raDetail:@""];
    RankInfo *ne08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne08.png"] rcImage:[UIImage imageNamed:@"ne09.png"] raName:@"Senior Chief Petty Officer" rate:@"SCPO / E-8" raDetail:@""];
    RankInfo *ne09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne10.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Master Chief Petty Officer" rate:@"MCPO / E-9" raDetail:@""];
    RankInfo *ne10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne12.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Command Master Chief Petty Officer" rate:@"CMDCM / E-9" raDetail:@""];
    RankInfo *ne11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne13.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Fleet/Force Master Chief Petty Officer" rate:@"FLTCM/FORCM / E-9" raDetail:@""];
    RankInfo *ne12 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne14.png"] rcImage:[UIImage imageNamed:@"ne15.png"] raName:@"Master Chief Petty Officer of the Navy" rate:@"MCPON / E-9" raDetail:@""];
    
    [neArray addObject:ne01];
    [neArray addObject:ne02];
    [neArray addObject:ne03];
    [neArray addObject:ne04];
    [neArray addObject:ne05];
    [neArray addObject:ne06];
    [neArray addObject:ne07];
    [neArray addObject:ne08];
    [neArray addObject:ne09];
    [neArray addObject:ne10];
    [neArray addObject:ne11];
    [neArray addObject:ne12];
    
    //Navy Officer Rank Array
    noArray = [[NSMutableArray alloc]init];
    
    RankInfo *no01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u001.png"] rcImage:[UIImage imageNamed:@"n001.png"] raName:@"Ensign" rate:@"ENS / O-1" raDetail:@""];
    RankInfo *no02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u002.png"] rcImage:[UIImage imageNamed:@"n002.png"] raName:@"Lieutenant Junior Grade" rate:@"LTJG / O-2" raDetail:@""];
    RankInfo *no03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u003.png"] rcImage:[UIImage imageNamed:@"n003.png"] raName:@"Lieutenant" rate:@"LT / 0-3" raDetail:@""];
    RankInfo *no04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u004.png"] rcImage:[UIImage imageNamed:@"n004.png"] raName:@"Lieutenant Commander" rate:@"LCDR / O-4" raDetail:@""];
    RankInfo *no05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u005.png"] rcImage:[UIImage imageNamed:@"n005.png"] raName:@"Commander" rate:@"CDR / O-5" raDetail:@""];
    RankInfo *no06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u006.png"] rcImage:[UIImage imageNamed:@"n006.png"] raName:@"Captain" rate:@"CAPT / O-6" raDetail:@""];
    RankInfo *no07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u007.png"] rcImage:[UIImage imageNamed:@"n007.png"] raName:@"Rear Admiral (Lower Half)" rate:@"RDML / O-7" raDetail:@""];
    RankInfo *no08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u008.png"] rcImage:[UIImage imageNamed:@"n008.png"] raName:@"Rear Admiral" rate:@"RADM / O-8" raDetail:@""];
    RankInfo *no09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u009.png"] rcImage:[UIImage imageNamed:@"n009.png"] raName:@"Vice Admiral" rate:@"VADM / O-9" raDetail:@""];
    RankInfo *no10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u010.png"] rcImage:[UIImage imageNamed:@"n010.png"] raName:@"Admiral" rate:@"ADM / O-10" raDetail:@""];
    RankInfo *no11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n012.png"] rcImage:[UIImage imageNamed:@"n011.png"] raName:@"Fleet Admiral" rate:@"Special" raDetail:@""];
    
    [noArray addObject:no01];
    [noArray addObject:no02];
    [noArray addObject:no03];
    [noArray addObject:no04];
    [noArray addObject:no05];
    [noArray addObject:no06];
    [noArray addObject:no07];
    [noArray addObject:no08];
    [noArray addObject:no09];
    [noArray addObject:no10];
    [noArray addObject:no11];
    
    //Navy Warrant Officer Rank Array
    nwArray = [[NSMutableArray alloc]init];
    
    RankInfo *nw01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n016.png"] rcImage:[UIImage imageNamed:@"n015.png"] raName:@"Chief Warrant Officer 2" rate:@"CWO2 / W-2" raDetail:@""];
    RankInfo *nw02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n018.png"] rcImage:[UIImage imageNamed:@"n017.png"] raName:@"Chief Warrant Officer 3" rate:@"CWO3 / W-3" raDetail:@""];
    RankInfo *nw03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n020.png"] rcImage:[UIImage imageNamed:@"n019.png"] raName:@"Chief Warrant Officer 4" rate:@"CWO4 / W-4" raDetail:@""];
    RankInfo *nw04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n022.png"] rcImage:[UIImage imageNamed:@"n021.png"] raName:@"Chief Warrant Officer 5" rate:@"CWO5 / W-5" raDetail:@""];
    
    [nwArray addObject:nw01];
    [nwArray addObject:nw02];
    [nwArray addObject:nw03];
    [nwArray addObject:nw04];
    
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
    if (ranksInt == 0)
    {
        return [ueArray count];
    }
    else if (ranksInt == 1)
    {
        return [uwArray count];
    }
    else if (ranksInt == 2)
    {
        return [uoArray count];
    }
    else if (ranksInt == 3)
    {
        return [neArray count];
    }
    else if (ranksInt == 4)
    {
        return [nwArray count];
    }
    else if (ranksInt == 5)
    {
        return [noArray count];
    }
    [self.rankTableView reloadData];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RankCustomCell *cell = (RankCustomCell *) [rankTableView dequeueReusableCellWithIdentifier:@"RankDetail"];
    
    if (cell != nil)
    {
        if (ranksInt == 0)
        {
            titleLabel.text = [NSString stringWithFormat:@"USMC Enlisted Ranks"];
            RankInfo *rankInfo = [ueArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 1)
        {
            titleLabel.text = [NSString stringWithFormat:@"USMC Warrant Officer Ranks"];
            RankInfo *rankInfo = [uwArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 2)
        {
            titleLabel.text = [NSString stringWithFormat:@"USMC Officer Ranks"];
            RankInfo *rankInfo = [uoArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 3)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Enlisted Ranks"];
            RankInfo *rankInfo = [neArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 4)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Warrant Officer Ranks"];
            RankInfo *rankInfo = [nwArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 5)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Officer Ranks"];
            RankInfo *rankInfo = [noArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImage;
            cell.rankLabel.text = rankInfo.rankName;
        }
    }
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"RankInformation"])
    {
        NSIndexPath *indexPath = [self.rankTableView indexPathForSelectedRow];
        RankDetailsViewController *rankDetailsViewController = segue.destinationViewController;
        
        if (rankDetailsViewController != nil)
        {
            if (ranksInt == 0)
            {
                RankInfo *ueinfo = [ueArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = ueinfo;
            }
            else if (ranksInt == 1)
            {
                RankInfo *uwinfo = [uwArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = uwinfo;
            }
            else if (ranksInt == 2)
            {
                RankInfo *uoinfo = [uoArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = uoinfo;
            }
            else if (ranksInt ==3)
            {
                RankInfo *neinfo = [neArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = neinfo;
            }
            else if (ranksInt == 4)
            {
                RankInfo *nwinfo = [nwArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = nwinfo;
            }
            else if (ranksInt == 5)
            {
                RankInfo *noinfo = [noArray objectAtIndex:indexPath.row];
                rankDetailsViewController.rInfo = noinfo;
            }
        }
    }
}


@end
