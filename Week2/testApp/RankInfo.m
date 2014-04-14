//
//  RankInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RankInfo.h"

@implementation RankInfo
@synthesize rankDetail, rankImage, rankName, rateName, rankCollarImage;

-(id)initWithTitle:(UIImage *)raImage rcImage:(UIImage *)rcImage raName:(NSString *)raName rate:(NSString *)rate raDetail:(NSString *)raDetail
{
    if ((self = [super init]))
    {
        rankImage = raImage;
        rankCollarImage = rcImage;
        rankName = raName;
        rateName = rate;
        rankDetail = raDetail;
    }
    return self;
}

@end
