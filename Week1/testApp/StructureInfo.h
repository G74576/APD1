//
//  StructureInfo.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StructureInfo : NSObject
{
    UIImage *emblemImage;       //Rank Structure List Image
    NSString *structureName;    //Rank Structure List Name
}

-(id)initWithTitle:(UIImage *)eImage sName:(NSString *)sName;

@property (strong, nonatomic)UIImage *emblemImage;
@property (strong, nonatomic)NSString *structureName;

@end
