//
//  OrdersInfo.h
//  testApp
//
//  Created by Kevin O'Toole on 4/9/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrdersInfo : NSObject
{
    NSString *orderNumber;
    NSString *orderDetail;
}

-(id)initWithTitle:(NSString *)oNumber oDetail:(NSString *)oDetail;

@property (strong, nonatomic)NSString *orderNumber;
@property (strong, nonatomic)NSString *orderDetail;

@end
