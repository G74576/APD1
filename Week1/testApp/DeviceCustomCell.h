//
//  DeviceCustomCell.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceCustomCell : UITableViewCell

@property (strong, nonatomic)IBOutlet UIImageView *deviceImageView; //Device Image View
@property (strong, nonatomic)IBOutlet UILabel *deviceLabel;         //Device Name Label

@end
