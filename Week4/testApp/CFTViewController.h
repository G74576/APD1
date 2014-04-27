//
//  CFTViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/14/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CFTViewController : UIViewController
{
    IBOutlet UISegmentedControl *gender;
    IBOutlet UITextField *age;
    IBOutlet UITextField *mtc;
    IBOutlet UITextField *amo;
    IBOutlet UITextField *muf;
    IBOutlet UISegmentedControl *altitude;
    IBOutlet UILabel *status;
    IBOutlet UILabel *score;
    IBOutlet UILabel *cftclass;
    NSInteger mtcScore;
    NSInteger amoScore;
    NSInteger mufScore;
    NSInteger cftScore;
    IBOutlet UIButton *calculateButton;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onClear:(id)sender;

@property (strong, nonatomic)IBOutlet UISegmentedControl *gender;
@property (strong, nonatomic)IBOutlet UITextField *age;
@property (strong, nonatomic)IBOutlet UITextField *mtc;
@property (strong, nonatomic)IBOutlet UITextField *amo;
@property (strong, nonatomic)IBOutlet UITextField *muf;
@property (strong, nonatomic)IBOutlet UISegmentedControl *altitude;
@property (strong, nonatomic)IBOutlet UILabel *status;
@property (strong, nonatomic)IBOutlet UILabel *score;
@property (strong, nonatomic)IBOutlet UILabel *cftclass;
@property (strong, nonatomic)IBOutlet UIButton *calculateButton;

@end
