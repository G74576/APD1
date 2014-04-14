//
//  OrdersCustomCell.m
//  testApp
//
//  Created by Kevin O'Toole on 4/9/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "OrdersCustomCell.h"

@implementation OrdersCustomCell
@synthesize orderFullLabel, orderLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
