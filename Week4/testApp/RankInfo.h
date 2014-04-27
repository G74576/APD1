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
    UIImage *rankImageSm;       //Rank Image (small for talbe icons)
    UIImage *rankCollarImage;   //Rank Extra Image
    NSString *rankName;         //Rank Name
    NSString *abbreviation;     //Rank Abbreviation
    NSString *payGrade;         //Pay Grade
    NSString *natoCode;         //NATO Code
}

-(id)initWithTitle:(UIImage *)raImage rImageSm:(UIImage *)rImageSm rcImage:(UIImage *)rcImage raName:(NSString *)raName abbrev:(NSString *)abbrev pGrade:(NSString *)pGrade nato:(NSString *)nato;

@property (strong, nonatomic)UIImage *rankImage;
@property (strong, nonatomic)UIImage *rankImageSm;
@property (strong, nonatomic)UIImage *rankCollarImage;
@property (strong, nonatomic)NSString *rankName;
@property (strong, nonatomic)NSString *abbreviation;
@property (strong, nonatomic)NSString *payGrade;
@property (strong, nonatomic)NSString *natoCode;

@end
