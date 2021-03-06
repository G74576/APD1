//
//  RankDetailsViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RankInfo.h"
#import "RankTableViewController.h"

@interface RankDetailsViewController : UIViewController
{
    IBOutlet UIImageView *rImageBig;    //Rank Image
    IBOutlet UIImageView *collarImg;    //Rank Extra Image
    IBOutlet UILabel *rNameLong;        //Rank Name
    IBOutlet UILabel *abbreviation;     //Rank Abbreviation & Pay Grade
    IBOutlet UITextView *details;       //Rank Details
}

@property (strong, nonatomic)IBOutlet UIImageView *rImageBig;
@property (strong, nonatomic)IBOutlet UIImageView *collarImg;
@property (strong, nonatomic)IBOutlet UILabel *rNameLong;
@property (strong, nonatomic)IBOutlet UILabel *abbreviation;
@property (strong, nonatomic)IBOutlet UITextView *details;

@property (strong, nonatomic)RankInfo *rInfo;

@end
