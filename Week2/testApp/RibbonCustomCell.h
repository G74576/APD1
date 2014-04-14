//
//  RibbonCustomCell.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RibbonCustomCell : UITableViewCell

@property (strong, nonatomic)IBOutlet UIImageView *ribbonImageView; //Ribbon Image
@property (strong, nonatomic)IBOutlet UILabel *ribbonLabel;         //Ribbon Name

@end
