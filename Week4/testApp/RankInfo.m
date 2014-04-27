//
//  RankInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RankInfo.h"

@implementation RankInfo
@synthesize rankImage, rankImageSm, rankName, payGrade, abbreviation, natoCode, rankCollarImage;

-(id)initWithTitle:(UIImage *)raImage rImageSm:(UIImage *)rImageSm rcImage:(UIImage *)rcImage raName:(NSString *)raName abbrev:(NSString *)abbrev pGrade:(NSString *)pGrade nato:(NSString *)nato
{
    if ((self = [super init]))
    {
        rankImage = raImage;
        rankImageSm = rImageSm;
        rankCollarImage = rcImage;
        rankName = raName;
        abbreviation = abbrev;
        payGrade = pGrade;
        natoCode = nato;
    }
    return self;
}

@end
