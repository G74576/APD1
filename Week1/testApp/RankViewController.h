//
//  RankViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *structureArray; //Rank Structure Array
}

//Tableview
@property (strong, nonatomic)IBOutlet UITableView *structureTableView;

//Structure Arrays
@property (strong, nonatomic)NSMutableArray *structureArray;

@end
