//
//  RankTableViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RankCustomCell.h"
#import "RankInfo.h"
#import "RankViewController.h"

@interface RankTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UILabel *titleLabel;   //Populate rank list title
    NSMutableArray *ueArray;        //USMC Enlisted Array
    NSMutableArray *uoArray;        //USMC Officer Array
    NSMutableArray *uwArray;        //USMC Warrant Officer Array
    NSMutableArray *neArray;        //Navy Enlisted Array
    NSMutableArray *noArray;        //Navy Officer Array
    NSMutableArray *nwArray;        //Navy Warrant Officer Array
    int ranksInt;                   //Used to know which row is selected to know which array to use
}
//Heading
@property (strong, nonatomic)IBOutlet UILabel *titleLabel;

//Tableview
@property (strong, nonatomic)IBOutlet UITableView *rankTableView;

//Arrays
@property (strong, nonatomic)NSMutableArray *ueArray;
@property (strong, nonatomic)NSMutableArray *uoArray;
@property (strong, nonatomic)NSMutableArray *uwArray;
@property (strong, nonatomic)NSMutableArray *neArray;
@property (strong, nonatomic)NSMutableArray *noArray;
@property (strong, nonatomic)NSMutableArray *nwArray;

@property int ranksInt;

@end
