//
//  RankViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RankViewController.h"
#import "RankInfo.h"
#import "StructureInfo.h"
#import "RankTableViewController.h"
#import "StructureCustomCell.h"

@interface RankViewController ()

@end

@implementation RankViewController
@synthesize structureTableView, structureArray;

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
    //Rank Structure Array
    structureArray = [[NSMutableArray alloc] init];
    
    StructureInfo *usmce = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"usmcEmblem.png"] sName:@"USMC Enlisted"];
    StructureInfo *usmcwo = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"usmcEmblem.png"] sName:@"USMC Warrant Officer"];
    StructureInfo *usmco = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"usmcEmblem.png"] sName:@"USMC Officer"];
    StructureInfo *navye = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"navyEmblem.png"] sName:@"Navy Enlisted"];
    StructureInfo *navywo = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"navyEmblem.png"] sName:@"Navy Warrant Officer"];
    StructureInfo *navyo = [[StructureInfo alloc]initWithTitle:[UIImage imageNamed:@"navyEmblem.png"] sName:@"Navy Officer"];
    
    [structureArray addObject:usmce];
    [structureArray addObject:usmcwo];
    [structureArray addObject:usmco];
    [structureArray addObject:navye];
    [structureArray addObject:navywo];
    [structureArray addObject:navyo];
    
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
    return [structureArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    StructureCustomCell *cell = (StructureCustomCell *) [structureTableView dequeueReusableCellWithIdentifier:@"StructureDetail"];
    
    if (cell != nil)
    {
        StructureInfo *structureInfo = [structureArray objectAtIndex:indexPath.row];
        
        //NSLog(@"%@", structureInfo);
        
        cell.emblem.image = structureInfo.emblemImage;
        cell.structLabel.text = structureInfo.structureName;
    }
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"RanksDetail"])
    {
        NSIndexPath *indexPath = [self.structureTableView indexPathForSelectedRow];
        RankTableViewController *rankTableViewController = segue.destinationViewController;
        
        if (rankTableViewController != nil)
        {
            //if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"usmce"])
            if ([indexPath row] == 0)
            {
                rankTableViewController.ranksInt = 0;
            }
            //else if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"usmcwo"])
            else if ([indexPath row] == 1)
            {
                rankTableViewController.ranksInt = 1;
            }
            //else if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"usmco"])
            else if ([indexPath row] ==2)
            {
                rankTableViewController.ranksInt = 2;
            }
            //else if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"navye"])
            else if ([indexPath row] ==3)
            {
                rankTableViewController.ranksInt = 3;
            }
            //else if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"navywo"])
            else if ([indexPath row] == 4)
            {
                rankTableViewController.ranksInt = 4;
            }
            //else if ([[structureArray objectAtIndex:indexPath.row] isEqual:@"navyo"])
            else if ([indexPath row] == 5)
            {
                rankTableViewController.ranksInt = 5;
            }
            //NSLog(@"%d", rankTableViewController.ranksInt);
        }
    }
}


@end
