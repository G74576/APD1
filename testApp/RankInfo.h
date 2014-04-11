//
//  RankInfo.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RankInfo : NSObject
{
    UIImage *rankImage;         //Rank Image
    UIImage *rankCollarImage;   //Rank Extra Image
    NSString *rankName;         //Rank Name
    NSString *rateName;         //Rank Abbreviation & Pay Grade
    NSString *rankDetail;       //Rank Detail
}

-(id)initWithTitle:(UIImage *)raImage rcImage:(UIImage *)rcImage raName:(NSString *)raName rate:(NSString *)rate raDetail:(NSString *)raDetail;

@property (strong, nonatomic)UIImage *rankImage;
@property (strong, nonatomic)UIImage *rankCollarImage;
@property (strong, nonatomic)NSString *rankName;
@property (strong, nonatomic)NSString *rateName;
@property (strong, nonatomic)NSString *rankDetail;

@end
