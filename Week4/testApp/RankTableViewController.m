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
    
    RankInfo *ue01 = [[RankInfo alloc]initWithTitle:nil rImageSm:nil rcImage:nil raName:@"Private" abbrev:@"PVT" pGrade:@"E-1" nato:@"OR-1"];
    RankInfo *ue02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue01.png"] rImageSm:[UIImage imageNamed:@"ue01sm.png"] rcImage:nil raName:@"Private First Class" abbrev:@"PFC" pGrade:@"E-2" nato:@"OR-2"];
    RankInfo *ue03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue02.png"] rImageSm:[UIImage imageNamed:@"ue02sm.png"] rcImage:nil raName:@"Lance Corporal" abbrev:@"LCPL" pGrade:@"E-3" nato:@"OR-3"];
    RankInfo *ue04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue03.png"] rImageSm:[UIImage imageNamed:@"ue03sm.png"] rcImage:nil raName:@"Corporal" abbrev:@"CPL" pGrade:@"E-4" nato:@"OR-4"];
    RankInfo *ue05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue04.png"] rImageSm:[UIImage imageNamed:@"ue04sm.png"] rcImage:nil raName:@"Sergeant" abbrev:@"SGT" pGrade:@"E-5" nato:@"OR-5"];
    RankInfo *ue06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue05.png"] rImageSm:[UIImage imageNamed:@"ue05sm.png"] rcImage:nil raName:@"Staff Sergeant" abbrev:@"SSGT" pGrade:@"E-6" nato:@"OR-6"];
    RankInfo *ue07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue06.png"] rImageSm:[UIImage imageNamed:@"ue06sm.png"] rcImage:nil raName:@"Gunnery Sergeant" abbrev:@"GYSGT" pGrade:@"E-7" nato:@"OR-7"];
    RankInfo *ue08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue08.png"] rImageSm:[UIImage imageNamed:@"ue08sm.png"] rcImage:nil raName:@"Master Sergeant" abbrev:@"MSGT" pGrade:@"E-8" nato:@"OR-8"];
    RankInfo *ue09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue07.png"] rImageSm:[UIImage imageNamed:@"ue07sm.png"] rcImage:nil raName:@"First Sergeant" abbrev:@"1STSGT" pGrade:@"E-8" nato:@"OR-8"];
    RankInfo *ue10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue09.png"] rImageSm:[UIImage imageNamed:@"ue09sm.png"] rcImage:nil raName:@"Master Gunnery Sergeant" abbrev:@"MGYSGT" pGrade:@"E-9" nato:@"OR-9"];
    RankInfo *ue11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue10.png"] rImageSm:[UIImage imageNamed:@"ue10sm.png"] rcImage:nil raName:@"Sergeant Major" abbrev:@"SGTMAJ" pGrade:@"E-9" nato:@"OR-9"];
    RankInfo *ue12 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ue11.png"] rImageSm:[UIImage imageNamed:@"ue11sm.png"] rcImage:nil raName:@"Sergeant Major of the Marine Corps" abbrev:@"SGTMAJMARCOR" pGrade:@"E-9" nato:@"OR-9"];
    
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
    
    RankInfo *uo01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u001.png"] rImageSm:[UIImage imageNamed:@"u001sm.png"] rcImage:nil raName:@"Second Lieutenant" abbrev:@"2NDLT" pGrade:@"O-1" nato:@"OF-1"];
    RankInfo *uo02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u002.png"] rImageSm:[UIImage imageNamed:@"u002sm.png"] rcImage:nil raName:@"First Lieutenant" abbrev:@"1STLT" pGrade:@"O-2" nato:@"OF-1"];
    RankInfo *uo03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u003.png"] rImageSm:[UIImage imageNamed:@"u003sm.png"] rcImage:nil raName:@"Captain" abbrev:@"CAPT" pGrade:@"O-3" nato:@"OF-2"];
    RankInfo *uo04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u004.png"] rImageSm:[UIImage imageNamed:@"u004sm.png"] rcImage:nil raName:@"Major" abbrev:@"MAJ" pGrade:@"O-4" nato:@"OF-3"];
    RankInfo *uo05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u005.png"] rImageSm:[UIImage imageNamed:@"u005sm.png"] rcImage:nil raName:@"Lieutenant Colonel" abbrev:@"LTCOL" pGrade:@"O-5" nato:@"OF-4"];
    RankInfo *uo06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u006.png"] rImageSm:[UIImage imageNamed:@"u006sm.png"] rcImage:nil raName:@"Colonel" abbrev:@"COL" pGrade:@"O-6" nato:@"OF-5"];
    RankInfo *uo07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u007.png"] rImageSm:[UIImage imageNamed:@"u007sm.png"] rcImage:nil raName:@"Brigadier General" abbrev:@"BGEN" pGrade:@"O-7" nato:@"OF-6"];
    RankInfo *uo08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u008.png"] rImageSm:[UIImage imageNamed:@"u008sm.png"] rcImage:nil raName:@"Major General" abbrev:@"MAJGEN" pGrade:@"O-8" nato:@"OF-7"];
    RankInfo *uo09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u009.png"] rImageSm:[UIImage imageNamed:@"u009sm.png"] rcImage:nil raName:@"Lieutenant General" abbrev:@"LTGEN" pGrade:@"O-9" nato:@"OF-8"];
    RankInfo *uo10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u010.png"] rImageSm:[UIImage imageNamed:@"u010sm.png"] rcImage:nil raName:@"General" abbrev:@"GEN" pGrade:@"O-10" nato:@"OF-9"];
    
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
    
    RankInfo *uw01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u011.png"] rImageSm:[UIImage imageNamed:@"u011sm.png"] rcImage:nil raName:@"Warrant Officer 1" abbrev:@"WO1" pGrade:@"W-1" nato:@"WO-1"];
    RankInfo *uw02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u012.png"] rImageSm:[UIImage imageNamed:@"u012sm.png"] rcImage:nil raName:@"Chief Warrant Officer 2" abbrev:@"CWO2" pGrade:@"W-2" nato:@"WO-2"];
    RankInfo *uw03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u013.png"] rImageSm:[UIImage imageNamed:@"u013sm.png"] rcImage:nil raName:@"Chief Warrant Officer 3" abbrev:@"CWO3" pGrade:@"W-3" nato:@"WO-3"];
    RankInfo *uw04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u014.png"] rImageSm:[UIImage imageNamed:@"u014sm.png"] rcImage:nil raName:@"Chief Warrant Officer 4" abbrev:@"CWO4" pGrade:@"W-4" nato:@"WO-4"];
    RankInfo *uw05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u015.png"] rImageSm:[UIImage imageNamed:@"u015sm.png"] rcImage:nil raName:@"Chief Warrant Officer 5" abbrev:@"CWO5" pGrade:@"W-5" nato:@"WO-5"];
    RankInfo *uw06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u016.png"] rImageSm:[UIImage imageNamed:@"u016sm.png"] rcImage:nil raName:@"Marine Gunner" abbrev:@"CWO2-CWO5" pGrade:@"W-2 - W-5" nato:@"WO-2 - WO-5"];
    
    [uwArray addObject:uw01];
    [uwArray addObject:uw02];
    [uwArray addObject:uw03];
    [uwArray addObject:uw04];
    [uwArray addObject:uw05];
    [uwArray addObject:uw06];
    
    //Navy Enlisted Rank Array
    neArray = [[NSMutableArray alloc]init];
    
    RankInfo *ne01 = [[RankInfo alloc]initWithTitle:nil rImageSm:nil rcImage:nil raName:@"Seaman Recruit" abbrev:@"SR" pGrade:@"E-1" nato:@"OR-1"];
    RankInfo *ne02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne01.png"] rImageSm:[UIImage imageNamed:@"ne01sm.png"] rcImage:nil raName:@"Seaman Apprentice" abbrev:@"SA" pGrade:@"E-2" nato:@"OR-2"];
    RankInfo *ne03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne02.png"] rImageSm:[UIImage imageNamed:@"ne02sm.png"] rcImage:nil raName:@"Seaman" abbrev:@"SN" pGrade:@"E-3" nato:@"OR-3"];
    RankInfo *ne04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne03.png"] rImageSm:[UIImage imageNamed:@"ne03sm.png"] rcImage:nil raName:@"Petty Officer Third Class" abbrev:@"PO3" pGrade:@"E-4" nato:@"OR-4"];
    RankInfo *ne05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne04.png"] rImageSm:[UIImage imageNamed:@"ne04sm.png"] rcImage:nil raName:@"Petty Officer Second Class" abbrev:@"PO2" pGrade:@"E-5" nato:@"OR-5"];
    RankInfo *ne06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne05.png"] rImageSm:[UIImage imageNamed:@"ne05sm.png"] rcImage:nil raName:@"Petty Officer First Class" abbrev:@"PO1" pGrade:@"E-6" nato:@"OR-6"];
    RankInfo *ne07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne06.png"] rImageSm:[UIImage imageNamed:@"ne06sm.png"] rcImage:[UIImage imageNamed:@"ne07.png"] raName:@"Chief Petty Officer" abbrev:@"CPO" pGrade:@"E-7" nato:@"OR-7"];
    RankInfo *ne08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne08.png"] rImageSm:[UIImage imageNamed:@"ne08sm.png"] rcImage:[UIImage imageNamed:@"ne09.png"] raName:@"Senior Chief Petty Officer" abbrev:@"SCPO" pGrade:@"E-8" nato:@"OR-8"];
    RankInfo *ne09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne10.png"] rImageSm:[UIImage imageNamed:@"ne10sm.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Master Chief Petty Officer" abbrev:@"MCPO" pGrade:@"E-9" nato:@"OR-9"];
    RankInfo *ne10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne12.png"] rImageSm:[UIImage imageNamed:@"ne12sm.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Command Master Chief Petty Officer" abbrev:@"CMDCM" pGrade:@"E-9" nato:@"OR-9"];
    RankInfo *ne11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne13.png"] rImageSm:[UIImage imageNamed:@"ne13sm.png"] rcImage:[UIImage imageNamed:@"ne11.png"] raName:@"Fleet/Force Master Chief Petty Officer" abbrev:@"FLTCM/FORCM" pGrade:@"E-9" nato:@"OR-9"];
    RankInfo *ne12 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"ne14.png"] rImageSm:[UIImage imageNamed:@"ne14sm.png"] rcImage:[UIImage imageNamed:@"ne15.png"] raName:@"Master Chief Petty Officer of the Navy" abbrev:@"MCPON" pGrade:@"E-9" nato:@"OR-9"];
    
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
    
    RankInfo *no01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u001.png"] rImageSm:[UIImage imageNamed:@"u001sm.png"] rcImage:[UIImage imageNamed:@"n001.png"] raName:@"Ensign" abbrev:@"ENS" pGrade:@"O-1" nato:@"OF-1"];
    RankInfo *no02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u002.png"] rImageSm:[UIImage imageNamed:@"u002sm.png"] rcImage:[UIImage imageNamed:@"n002.png"] raName:@"Lieutenant Junior Grade" abbrev:@"LTJG" pGrade:@"O-2" nato:@"OF-1"];
    RankInfo *no03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u003.png"] rImageSm:[UIImage imageNamed:@"u003sm.png"] rcImage:[UIImage imageNamed:@"n003.png"] raName:@"Lieutenant" abbrev:@"LT" pGrade:@"O-3" nato:@"OF-2"];
    RankInfo *no04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u004.png"] rImageSm:[UIImage imageNamed:@"u004sm.png"] rcImage:[UIImage imageNamed:@"n004.png"] raName:@"Lieutenant Commander" abbrev:@"LCDR" pGrade:@"O-4" nato:@"OF-3"];
    RankInfo *no05 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u005.png"] rImageSm:[UIImage imageNamed:@"u005sm.png"] rcImage:[UIImage imageNamed:@"n005.png"] raName:@"Commander" abbrev:@"CDR" pGrade:@"O-5" nato:@"OF-4"];
    RankInfo *no06 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u006.png"] rImageSm:[UIImage imageNamed:@"u006sm.png"] rcImage:[UIImage imageNamed:@"n006.png"] raName:@"Captain" abbrev:@"CAPT" pGrade:@"O-6" nato:@"OF-5"];
    RankInfo *no07 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u007.png"] rImageSm:[UIImage imageNamed:@"u007sm.png"] rcImage:[UIImage imageNamed:@"n007.png"] raName:@"Rear Admiral (Lower Half)" abbrev:@"RDML" pGrade:@"0-7" nato:@"OF-6"];
    RankInfo *no08 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u008.png"] rImageSm:[UIImage imageNamed:@"u008sm.png"] rcImage:[UIImage imageNamed:@"n008.png"] raName:@"Rear Admiral" abbrev:@"RADM" pGrade:@"O-8" nato:@"OF-7"];
    RankInfo *no09 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u009.png"] rImageSm:[UIImage imageNamed:@"u009sm.png"] rcImage:[UIImage imageNamed:@"n009.png"] raName:@"Vice Admiral" abbrev:@"VADM" pGrade:@"O-9" nato:@"OF-8"];
    RankInfo *no10 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"u010.png"] rImageSm:[UIImage imageNamed:@"u010sm.png"] rcImage:[UIImage imageNamed:@"n010.png"] raName:@"Admiral" abbrev:@"ADM" pGrade:@"O-10" nato:@"OF-9"];
    RankInfo *no11 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n012.png"] rImageSm:[UIImage imageNamed:@"no12sm.png"] rcImage:[UIImage imageNamed:@"n011.png"] raName:@"Fleet Admiral" abbrev:@"FADM" pGrade:@"Special" nato:@"OF-10"];
    
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
    
    RankInfo *nw01 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n016.png"] rImageSm:[UIImage imageNamed:@"no16sm.png"] rcImage:[UIImage imageNamed:@"n015.png"] raName:@"Chief Warrant Officer 2" abbrev:@"CWO2" pGrade:@"W-2" nato:@"WO-2"];
    RankInfo *nw02 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n018.png"] rImageSm:[UIImage imageNamed:@"no18sm.png"] rcImage:[UIImage imageNamed:@"n017.png"] raName:@"Chief Warrant Officer 3" abbrev:@"CWO3" pGrade:@"W-3" nato:@"WO-3"];
    RankInfo *nw03 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n020.png"] rImageSm:[UIImage imageNamed:@"no20sm.png"] rcImage:[UIImage imageNamed:@"n019.png"] raName:@"Chief Warrant Officer 4" abbrev:@"CWO4" pGrade:@"W-4" nato:@"WO-4"];
    RankInfo *nw04 = [[RankInfo alloc]initWithTitle:[UIImage imageNamed:@"n022.png"] rImageSm:[UIImage imageNamed:@"no22sm.png"] rcImage:[UIImage imageNamed:@"n021.png"] raName:@"Chief Warrant Officer 5" abbrev:@"CWO5" pGrade:@"W-5" nato:@"WO-5"];
    
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
            cell.rankImageView.image = rankInfo.rankImageSm;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 1)
        {
            titleLabel.text = [NSString stringWithFormat:@"USMC Warrant Officer Ranks"];
            RankInfo *rankInfo = [uwArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImageSm;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 2)
        {
            titleLabel.text = [NSString stringWithFormat:@"USMC Officer Ranks"];
            RankInfo *rankInfo = [uoArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImageSm;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 3)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Enlisted Ranks"];
            RankInfo *rankInfo = [neArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImageSm;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 4)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Warrant Officer Ranks"];
            RankInfo *rankInfo = [nwArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImageSm;
            cell.rankLabel.text = rankInfo.rankName;
        }
        else if (ranksInt == 5)
        {
            titleLabel.text = [NSString stringWithFormat:@"Navy Officer Ranks"];
            RankInfo *rankInfo = [noArray objectAtIndex:indexPath.row];
            cell.rankImageView.image = rankInfo.rankImageSm;
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
