//
//  DevicesInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DevicesInfo.h"

@implementation DevicesInfo
@synthesize deviceDetail, deviceImage, deviceName;

-(id)initWithTitle:(UIImage *)dImage dName:(NSString *)dName dDetail:(NSString *)dDetail
{
    if((self = [super init]))
    {
        deviceImage = dImage;
        deviceName = dName;
        deviceDetail = dDetail;
    }
    return self;
}

@end
