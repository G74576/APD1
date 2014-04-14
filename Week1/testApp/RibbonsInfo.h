//
//  RibbonsInfo.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RibbonsInfo : NSObject
{
    NSString *ribbonName;       //Ribbon Name
    UIImage *ribbonImage;       //Ribbon Image
    NSString *ribbonDetail;     //Ribbon Details
}

-(id)initWithTitle:(UIImage *)image rName:(NSString *)rName rDetail:(NSString *)rDetail;

@property (strong, nonatomic)NSString *ribbonName;
@property (strong, nonatomic)UIImage *ribbonImage;
@property (strong, nonatomic)NSString *ribbonDetail;

@end
