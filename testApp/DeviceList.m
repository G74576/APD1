//
//  DeviceList.m
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "DeviceList.h"

@implementation DeviceList
@synthesize deviceListName;

-(id)initWithTitle:(NSString *)dListName
{
    if ((self = [super init]))
    {
        deviceListName = dListName;
    }
    return self;
}

@end
