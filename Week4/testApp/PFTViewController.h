//
//  PFTViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/13/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PFTViewController : UIViewController
{
    IBOutlet UISegmentedControl *gender;
    IBOutlet UITextField *age;
    IBOutlet UILabel *flexHang;
    IBOutlet UITextField *pullups;
    IBOutlet UITextField *crunches;
    IBOutlet UITextField *runtime;
    IBOutlet UISegmentedControl *altitude;
    IBOutlet UILabel *status;
    IBOutlet UILabel *score;
    IBOutlet UILabel *pftClass;
    NSInteger pullUpScore;
    NSInteger crunchesScore;
    NSInteger runtimeScore;
    NSInteger pftscore;
    IBOutlet UIButton *calculateButton;
}

-(IBAction)onClick:(id)sender;
-(IBAction)genderSegmentedController;
-(IBAction)onClear:(id)sender;

@property (strong, nonatomic)IBOutlet UISegmentedControl *gender;
@property (strong, nonatomic)IBOutlet UITextField *age;
@property (strong, nonatomic)IBOutlet UILabel *flexHang;
@property (strong, nonatomic)IBOutlet UITextField *pullups;
@property (strong, nonatomic)IBOutlet UITextField *crunches;
@property (strong, nonatomic)IBOutlet UITextField *runtime;
@property (strong, nonatomic)IBOutlet UISegmentedControl *altitude;
@property (strong, nonatomic)IBOutlet UILabel *status;
@property (strong, nonatomic)IBOutlet UILabel *score;
@property (strong, nonatomic)IBOutlet UILabel *pftClass;
@property (strong, nonatomic)IBOutlet UIButton *calculateButton;

@end
