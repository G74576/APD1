//
//  DevicesInfo.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DevicesInfo : NSObject
{
    UIImage *deviceImage;       //Device Image
    NSString *deviceName;       //Device Name
    NSString *deviceDetail;     //Device Details
}

-(id)initWithTitle:(UIImage *)dImage dName:(NSString *)dName dDetail:(NSString *)dDetail;

@property (strong, nonatomic)UIImage *deviceImage;
@property (strong, nonatomic)NSString *deviceName;
@property (strong, nonatomic)NSString *deviceDetail;

@end
