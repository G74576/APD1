//
//  DeviceList.h
//  testApp
//
//  Created by Kevin O'Toole on 4/8/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviceList : NSObject
{
    NSString *deviceListName;   //Devices List
}

-(id)initWithTitle:(NSString *)dListName;

@property (strong, nonatomic)NSString *deviceListName;

@end
