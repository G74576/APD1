//
//  RibbonsInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "RibbonsInfo.h"

@implementation RibbonsInfo
@synthesize ribbonImage, ribbonName, ribbonDetail;

-(id)initWithTitle:(UIImage *)image rName:(NSString *)rName rDetail:(NSString *)rDetail
{
    if ((self = [super init]))
    {
        ribbonImage = image;
        ribbonName = rName;
        ribbonDetail = rDetail;
    }
    return self;
}


@end
