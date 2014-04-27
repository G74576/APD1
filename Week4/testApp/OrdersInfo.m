//
//  OrdersInfo.m
//  testApp
//
//  Created by Kevin O'Toole on 4/9/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "OrdersInfo.h"

@implementation OrdersInfo
@synthesize orderDetail, orderNumber;

-(id)initWithTitle:(NSString *)oNumber oDetail:(NSString *)oDetail
{
    if ((self = [super init]))
    {
        orderNumber = oNumber;
        orderDetail = oDetail;
    }
    return self;
}

@end
