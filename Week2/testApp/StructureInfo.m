//
//  StructureInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "StructureInfo.h"

@implementation StructureInfo
@synthesize emblemImage, structureName;

-(id)initWithTitle:(UIImage *)eImage sName:(NSString *)sName
{
    if ((self = [super init]))
    {
        emblemImage = eImage;
        structureName = sName;
    }
    return self;
}

@end
