//
//  RibbonDetailViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RibbonsInfo.h"
#import "RibbonViewController.h"

@interface RibbonDetailViewController : UIViewController
{
    IBOutlet UIImageView *ribbonDetailImage;    //Ribbon Image
    IBOutlet UILabel *ribbonDetailLabel;        //Ribbon Name
}

@property (strong, nonatomic)IBOutlet UIImageView *ribbonDetailImage;
@property (strong, nonatomic)IBOutlet UILabel *ribbonDetailLabel;

@property (strong, nonatomic)RibbonsInfo *ribbonsDetails;

@end
