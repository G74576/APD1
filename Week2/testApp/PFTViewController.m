//
//  PFTViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/13/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "PFTViewController.h"

@interface PFTViewController ()

@end

@implementation PFTViewController
@synthesize age, altitude, runtime, pullups, pftClass, gender, crunches, flexHang, score, status;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)genderSegmentedController
{
    if (gender.selectedSegmentIndex == 0)
    {
        flexHang.text = [NSString stringWithFormat:@"Pull-Ups:"];
    }
    else if (gender.selectedSegmentIndex == 1)
    {
        flexHang.text = [NSString stringWithFormat:@"Flexarm Hang:"];
    }
}

-(IBAction)onClick:(id)sender
{
    //If gender is Male:
    if (gender.selectedSegmentIndex == 0)
    {
        //If not at high altitude:
        if (altitude.selectedSegmentIndex == 0)
        {
            //Calculation for Pull-Ups:
            //Convert string to integer:
            NSString *pullUpText = pullups.text;
            NSInteger pullUpValue = [[ pullUpText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (pullUpValue >= 20)
            {
                pullUpScore = 100;
            }
            else if (pullUpValue == 19)
            {
                pullUpScore = 95;
            }
            else if (pullUpValue == 18)
            {
                pullUpScore = 90;
            }
            else if (pullUpValue == 17)
            {
                pullUpScore = 85;
            }
            else if (pullUpValue == 16)
            {
                pullUpScore = 80;
            }
            else if (pullUpValue == 15)
            {
                pullUpScore = 75;
            }
            else if (pullUpValue == 14)
            {
                pullUpScore = 70;
            }
            else if (pullUpValue == 13)
            {
                pullUpScore = 65;
            }
            else if (pullUpValue == 12)
            {
                pullUpScore = 60;
            }
            else if (pullUpValue == 11)
            {
                pullUpScore = 55;
            }
            else if (pullUpValue == 10)
            {
                pullUpScore = 50;
            }
            else if (pullUpValue == 9)
            {
                pullUpScore = 45;
            }
            else if (pullUpValue == 8)
            {
                pullUpScore = 40;
            }
            else if (pullUpValue == 7)
            {
                pullUpScore = 35;
            }
            else if (pullUpValue == 6)
            {
                pullUpScore = 30;
            }
            else if (pullUpValue == 5)
            {
                pullUpScore = 25;
            }
            else if (pullUpValue == 4)
            {
                pullUpScore = 20;
            }
            else if (pullUpValue == 3)
            {
                pullUpScore = 15;
            }
            else if (pullUpValue == 2)
            {
                pullUpScore = 10;
            }
            else if (pullUpValue == 1)
            {
                pullUpScore = 5;
            }
            
            [pullups resignFirstResponder];
            
            //Calculate Crunches:
            //Convert string to integer:
            NSString *crunchesText = crunches.text;
            NSInteger crunchesValue = [[crunchesText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (crunchesValue >= 100)
            {
                crunchesScore = 100;
            }
            if (crunchesValue == 99)
            {
                crunchesScore = 99;
            }
            if (crunchesValue == 98)
            {
                crunchesScore = 98;
            }
            if (crunchesValue == 97)
            {
                crunchesScore = 97;
            }
            if (crunchesValue == 96)
            {
                crunchesScore = 96;
            }
            if (crunchesValue == 95)
            {
                crunchesScore = 95;
            }
            if (crunchesValue == 94)
            {
                crunchesScore = 94;
            }
            if (crunchesValue == 93)
            {
                crunchesScore = 93;
            }
            if (crunchesValue == 92)
            {
                crunchesScore = 92;
            }
            if (crunchesValue == 91)
            {
                crunchesScore = 91;
            }
            if (crunchesValue == 90)
            {
                crunchesScore = 90;
            }
            if (crunchesValue == 89)
            {
                crunchesScore = 89;
            }
            if (crunchesValue == 88)
            {
                crunchesScore = 88;
            }
            if (crunchesValue == 87)
            {
                crunchesScore = 87;
            }
            if (crunchesValue == 86)
            {
                crunchesScore = 86;
            }
            if (crunchesValue == 85)
            {
                crunchesScore = 85;
            }
            if (crunchesValue == 84)
            {
                crunchesScore = 84;
            }
            if (crunchesValue == 83)
            {
                crunchesScore = 83;
            }
            if (crunchesValue == 82)
            {
                crunchesScore = 82;
            }
            if (crunchesValue == 81)
            {
                crunchesScore = 81;
            }
            if (crunchesValue == 80)
            {
                crunchesScore = 80;
            }
            if (crunchesValue == 79)
            {
                crunchesScore = 79;
            }
            if (crunchesValue == 78)
            {
                crunchesScore = 78;
            }
            if (crunchesValue == 77)
            {
                crunchesScore = 77;
            }
            if (crunchesValue == 76)
            {
                crunchesScore = 76;
            }
            if (crunchesValue == 75)
            {
                crunchesScore = 75;
            }
            if (crunchesValue == 74)
            {
                crunchesScore = 74;
            }
            if (crunchesValue == 73)
            {
                crunchesScore = 73;
            }
            if (crunchesValue == 72)
            {
                crunchesScore = 72;
            }
            if (crunchesValue == 71)
            {
                crunchesScore = 71;
            }
            if (crunchesValue == 70)
            {
                crunchesScore = 70;
            }
            if (crunchesValue == 69)
            {
                crunchesScore = 69;
            }
            if (crunchesValue == 68)
            {
                crunchesScore = 68;
            }
            if (crunchesValue == 67)
            {
                crunchesScore = 67;
            }
            if (crunchesValue == 66)
            {
                crunchesScore = 66;
            }
            if (crunchesValue == 65)
            {
                crunchesScore = 65;
            }
            if (crunchesValue == 64)
            {
                crunchesScore = 64;
            }
            if (crunchesValue == 63)
            {
                crunchesScore = 63;
            }
            if (crunchesValue == 62)
            {
                crunchesScore = 62;
            }
            if (crunchesValue == 61)
            {
                crunchesScore = 61;
            }
            if (crunchesValue == 60)
            {
                crunchesScore = 60;
            }
            if (crunchesValue == 59)
            {
                crunchesScore = 59;
            }
            if (crunchesValue == 58)
            {
                crunchesScore = 58;
            }
            if (crunchesValue == 57)
            {
                crunchesScore = 57;
            }
            if (crunchesValue == 56)
            {
                crunchesScore = 56;
            }
            if (crunchesValue == 55)
            {
                crunchesScore = 55;
            }
            if (crunchesValue == 54)
            {
                crunchesScore = 54;
            }
            if (crunchesValue == 53)
            {
                crunchesScore = 53;
            }
            if (crunchesValue == 52)
            {
                crunchesScore = 52;
            }
            if (crunchesValue == 51)
            {
                crunchesScore = 51;
            }
            if (crunchesValue == 50)
            {
                crunchesScore = 50;
            }
            if (crunchesValue == 49)
            {
                crunchesScore = 49;
            }
            if (crunchesValue == 48)
            {
                crunchesScore = 48;
            }
            if (crunchesValue == 47)
            {
                crunchesScore = 47;
            }
            if (crunchesValue == 46)
            {
                crunchesScore = 46;
            }
            if (crunchesValue == 45)
            {
                crunchesScore = 45;
            }
            if (crunchesValue == 44)
            {
                crunchesScore = 44;
            }
            if (crunchesValue == 43)
            {
                crunchesScore = 43;
            }
            if (crunchesValue == 42)
            {
                crunchesScore = 42;
            }
            if (crunchesValue == 41)
            {
                crunchesScore = 41;
            }
            if (crunchesValue == 40)
            {
                crunchesScore = 40;
            }
            if (crunchesValue == 39)
            {
                crunchesScore = 39;
            }
            if (crunchesValue == 38)
            {
                crunchesScore = 38;
            }
            if (crunchesValue == 37)
            {
                crunchesScore = 37;
            }
            if (crunchesValue == 36)
            {
                crunchesScore = 36;
            }
            if (crunchesValue == 35)
            {
                crunchesScore = 35;
            }
            if (crunchesValue == 34)
            {
                crunchesScore = 34;
            }
            if (crunchesValue == 33)
            {
                crunchesScore = 33;
            }
            if (crunchesValue == 32)
            {
                crunchesScore = 32;
            }
            if (crunchesValue == 31)
            {
                crunchesScore = 31;
            }
            if (crunchesValue == 30)
            {
                crunchesScore = 30;
            }
            if (crunchesValue == 29)
            {
                crunchesScore = 29;
            }
            if (crunchesValue == 28)
            {
                crunchesScore = 28;
            }
            if (crunchesValue == 27)
            {
                crunchesScore = 27;
            }
            if (crunchesValue == 26)
            {
                crunchesScore = 26;
            }
            if (crunchesValue == 25)
            {
                crunchesScore = 25;
            }
            if (crunchesValue == 24)
            {
                crunchesScore = 24;
            }
            if (crunchesValue == 23)
            {
                crunchesScore = 23;
            }
            if (crunchesValue == 22)
            {
                crunchesScore = 22;
            }
            if (crunchesValue == 21)
            {
                crunchesScore = 21;
            }
            if (crunchesValue == 20)
            {
                crunchesScore = 20;
            }
            if (crunchesValue == 19)
            {
                crunchesScore = 19;
            }
            if (crunchesValue == 18)
            {
                crunchesScore = 18;
            }
            if (crunchesValue == 17)
            {
                crunchesScore = 17;
            }
            if (crunchesValue == 16)
            {
                crunchesScore = 16;
            }
            if (crunchesValue == 15)
            {
                crunchesScore = 15;
            }
            if (crunchesValue == 14)
            {
                crunchesScore = 14;
            }
            if (crunchesValue == 13)
            {
                crunchesScore = 13;
            }
            if (crunchesValue == 12)
            {
                crunchesScore = 12;
            }
            if (crunchesValue == 11)
            {
                crunchesScore = 11;
            }
            if (crunchesValue == 10)
            {
                crunchesScore = 10;
            }
            if (crunchesValue == 9)
            {
                crunchesScore = 9;
            }
            if (crunchesValue == 8)
            {
                crunchesScore = 8;
            }
            if (crunchesValue == 7)
            {
                crunchesScore = 7;
            }
            if (crunchesValue == 6)
            {
                crunchesScore = 6;
            }
            if (crunchesValue == 5)
            {
                crunchesScore = 5;
            }
            if (crunchesValue == 4)
            {
                crunchesScore = 4;
            }
            if (crunchesValue == 3)
            {
                crunchesScore = 3;
            }
            if (crunchesValue == 2)
            {
                crunchesScore = 2;
            }
            if (crunchesValue == 1)
            {
                crunchesScore = 1;
            }
            [crunches resignFirstResponder];
            
            //Calculate run time:
            //Convert string to integer:
            NSString *runtimeText = runtime.text;
            NSInteger runtimeValue = [[runtimeText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            if (runtimeValue <= 1800)
            {
                runtimeScore = 100;
            }
            if ((runtimeValue >= 1801) && (runtimeValue <= 1810))
            {
                runtimeScore = 99;
            }
            if ((runtimeValue >= 1811) && (runtimeValue <= 1820))
            {
                runtimeScore = 98;
            }
            if ((runtimeValue >= 1821) && (runtimeValue <= 1830))
            {
                runtimeScore = 97;
            }
            if ((runtimeValue >= 1831) && (runtimeValue <= 1840))
            {
                runtimeScore = 96;
            }
            if ((runtimeValue >= 1841) && (runtimeValue <= 1850))
            {
                runtimeScore = 95;
            }
            if ((runtimeValue >= 1851) && (runtimeValue <= 1900))
            {
                runtimeScore = 94;
            }
            if ((runtimeValue >= 1901) && (runtimeValue <= 1910))
            {
                runtimeScore = 93;
            }
            if ((runtimeValue >= 1911) && (runtimeValue <= 1920))
            {
                runtimeScore = 92;
            }
            if ((runtimeValue >= 1921) && (runtimeValue <= 1930))
            {
                runtimeScore = 91;
            }
            if ((runtimeValue >= 1931) && (runtimeValue <= 1940))
            {
                runtimeScore = 90;
            }
            if ((runtimeValue >= 1941) && (runtimeValue <= 1950))
            {
                runtimeScore = 89;
            }
            if ((runtimeValue >= 1951) && (runtimeValue <= 2000))
            {
                runtimeScore = 88;
            }
            if ((runtimeValue >= 2001) && (runtimeValue <= 2010))
            {
                runtimeScore = 87;
            }
            if ((runtimeValue >= 2011) && (runtimeValue <= 2020))
            {
                runtimeScore = 86;
            }
            if ((runtimeValue >= 2021) && (runtimeValue <= 2030))
            {
                runtimeScore = 85;
            }
            if ((runtimeValue >= 2031) && (runtimeValue <= 2040))
            {
                runtimeScore = 84;
            }
            if ((runtimeValue >= 2041) && (runtimeValue <= 2050))
            {
                runtimeScore = 83;
            }
            if ((runtimeValue >= 2051) && (runtimeValue <= 2100))
            {
                runtimeScore = 82;
            }
            if ((runtimeValue >= 2101) && (runtimeValue <= 2110))
            {
                runtimeScore = 81;
            }
            if ((runtimeValue >= 2111) && (runtimeValue <= 2120))
            {
                runtimeScore = 80;
            }
            if ((runtimeValue >= 2121) && (runtimeValue <= 2130))
            {
                runtimeScore = 79;
            }
            if ((runtimeValue >= 2131) && (runtimeValue <= 2140))
            {
                runtimeScore = 78;
            }
            if ((runtimeValue >= 2141) && (runtimeValue <= 2150))
            {
                runtimeScore = 77;
            }
            if ((runtimeValue >= 2151) && (runtimeValue <= 2200))
            {
                runtimeScore = 76;
            }
            if ((runtimeValue >= 2201) && (runtimeValue <= 2210))
            {
                runtimeScore = 75;
            }
            if ((runtimeValue >= 2211) && (runtimeValue <= 2220))
            {
                runtimeScore = 74;
            }
            if ((runtimeValue >= 2221) && (runtimeValue <= 2230))
            {
                runtimeScore = 73;
            }
            if ((runtimeValue >= 2231) && (runtimeValue <= 2240))
            {
                runtimeScore = 72;
            }
            if ((runtimeValue >= 2241) && (runtimeValue <= 2250))
            {
                runtimeScore = 71;
            }
            if ((runtimeValue >= 2251) && (runtimeValue <= 2300))
            {
                runtimeScore = 70;
            }
            if ((runtimeValue >= 2301) && (runtimeValue <= 2310))
            {
                runtimeScore = 69;
            }
            if ((runtimeValue >= 2311) && (runtimeValue <= 2320))
            {
                runtimeScore = 68;
            }
            if ((runtimeValue >= 2321) && (runtimeValue <= 2330))
            {
                runtimeScore = 67;
            }
            if ((runtimeValue >= 2331) && (runtimeValue <= 2340))
            {
                runtimeScore = 66;
            }
            if ((runtimeValue >= 2341) && (runtimeValue <= 2350))
            {
                runtimeScore = 65;
            }
            if ((runtimeValue >= 2351) && (runtimeValue <= 2400))
            {
                runtimeScore = 64;
            }
            if ((runtimeValue >= 2401) && (runtimeValue <= 2410))
            {
                runtimeScore = 63;
            }
            if ((runtimeValue >= 2411) && (runtimeValue <= 2420))
            {
                runtimeScore = 62;
            }
            if ((runtimeValue >= 2421) && (runtimeValue <= 2430))
            {
                runtimeScore = 61;
            }
            if ((runtimeValue >= 2431) && (runtimeValue <= 2440))
            {
                runtimeScore = 60;
            }
            if ((runtimeValue >= 2441) && (runtimeValue <= 2450))
            {
                runtimeScore = 59;
            }
            if ((runtimeValue >= 2451) && (runtimeValue <= 2500))
            {
                runtimeScore = 58;
            }
            if ((runtimeValue >= 2501) && (runtimeValue <= 2510))
            {
                runtimeScore = 57;
            }
            if ((runtimeValue >= 2511) && (runtimeValue <= 2520))
            {
                runtimeScore = 56;
            }
            if ((runtimeValue >= 2521) && (runtimeValue <= 2530))
            {
                runtimeScore = 55;
            }
            if ((runtimeValue >= 2531) && (runtimeValue <= 2540))
            {
                runtimeScore = 54;
            }
            if ((runtimeValue >= 2541) && (runtimeValue <= 2550))
            {
                runtimeScore = 53;
            }
            if ((runtimeValue >= 2551) && (runtimeValue <= 2600))
            {
                runtimeScore = 52;
            }
            if ((runtimeValue >= 2601) && (runtimeValue <= 2610))
            {
                runtimeScore = 51;
            }
            if ((runtimeValue >= 2611) && (runtimeValue <= 2620))
            {
                runtimeScore = 50;
            }
            if ((runtimeValue >= 2621) && (runtimeValue <= 2630))
            {
                runtimeScore = 49;
            }
            if ((runtimeValue >= 2631) && (runtimeValue <= 2640))
            {
                runtimeScore = 48;
            }
            if ((runtimeValue >= 2641) && (runtimeValue <= 2650))
            {
                runtimeScore = 47;
            }
            if ((runtimeValue >= 2651) && (runtimeValue <= 2700))
            {
                runtimeScore = 46;
            }
            if ((runtimeValue >= 2701) && (runtimeValue <= 2710))
            {
                runtimeScore = 45;
            }
            if ((runtimeValue >= 2711) && (runtimeValue <= 2720))
            {
                runtimeScore = 44;
            }
            if ((runtimeValue >= 2721) && (runtimeValue <= 2730))
            {
                runtimeScore = 43;
            }
            if ((runtimeValue >= 2731) && (runtimeValue <= 2740))
            {
                runtimeScore = 42;
            }
            if ((runtimeValue >= 2741) && (runtimeValue <= 2750))
            {
                runtimeScore = 41;
            }
            if ((runtimeValue >= 2751) && (runtimeValue <= 2800))
            {
                runtimeScore = 40;
            }
            if ((runtimeValue >= 2801) && (runtimeValue <= 2810))
            {
                runtimeScore = 39;
            }
            if ((runtimeValue >= 2811) && (runtimeValue <= 2820))
            {
                runtimeScore = 38;
            }
            if ((runtimeValue >= 2821) && (runtimeValue <= 2830))
            {
                runtimeScore = 37;
            }
            if ((runtimeValue >= 2831) && (runtimeValue <= 2840))
            {
                runtimeScore = 36;
            }
            if ((runtimeValue >= 2841) && (runtimeValue <= 2850))
            {
                runtimeScore = 35;
            }
            if ((runtimeValue >= 2851) && (runtimeValue <= 2900))
            {
                runtimeScore = 34;
            }
            if ((runtimeValue >= 2901) && (runtimeValue <= 2910))
            {
                runtimeScore = 33;
            }
            if ((runtimeValue >= 2911) && (runtimeValue <= 2920))
            {
                runtimeScore = 32;
            }
            if ((runtimeValue >= 2921) && (runtimeValue <= 2930))
            {
                runtimeScore = 31;
            }
            if ((runtimeValue >= 2931) && (runtimeValue <= 2940))
            {
                runtimeScore = 30;
            }
            if ((runtimeValue >= 2941) && (runtimeValue <= 2950))
            {
                runtimeScore = 29;
            }
            if ((runtimeValue >= 2951) && (runtimeValue <= 3000))
            {
                runtimeScore = 28;
            }
            if ((runtimeValue >= 3001) && (runtimeValue <= 3010))
            {
                runtimeScore = 27;
            }
            if ((runtimeValue >= 3011) && (runtimeValue <= 3020))
            {
                runtimeScore = 26;
            }
            if ((runtimeValue >= 3021) && (runtimeValue <= 3030))
            {
                runtimeScore = 25;
            }
            if ((runtimeValue >= 3031) && (runtimeValue <= 3040))
            {
                runtimeScore = 24;
            }
            if ((runtimeValue >= 3041) && (runtimeValue <= 3050))
            {
                runtimeScore = 23;
            }
            if ((runtimeValue >= 3051) && (runtimeValue <= 3100))
            {
                runtimeScore = 22;
            }
            if ((runtimeValue >= 3101) && (runtimeValue <= 3110))
            {
                runtimeScore = 21;
            }
            if ((runtimeValue >= 3111) && (runtimeValue <= 3120))
            {
                runtimeScore = 20;
            }
            if ((runtimeValue >= 3121) && (runtimeValue <= 3130))
            {
                runtimeScore = 19;
            }
            if ((runtimeValue >= 3131) && (runtimeValue <= 3140))
            {
                runtimeScore = 18;
            }
            if ((runtimeValue >= 3141) && (runtimeValue <= 3150))
            {
                runtimeScore = 17;
            }
            if ((runtimeValue >= 3151) && (runtimeValue <= 3200))
            {
                runtimeScore = 16;
            }
            if ((runtimeValue >= 3201) && (runtimeValue <= 3210))
            {
                runtimeScore = 15;
            }
            if ((runtimeValue >= 3211) && (runtimeValue <= 3220))
            {
                runtimeScore = 14;
            }
            if ((runtimeValue >= 3221) && (runtimeValue <= 3230))
            {
                runtimeScore = 13;
            }
            if ((runtimeValue >= 3231) && (runtimeValue <= 3240))
            {
                runtimeScore = 12;
            }
            if ((runtimeValue >= 3241) && (runtimeValue <= 3250))
            {
                runtimeScore = 11;
            }
            if ((runtimeValue >= 3251) && (runtimeValue <= 3300))
            {
                runtimeScore = 10;
            }
            if ((runtimeValue >= 3301) && (runtimeValue <= 3310))
            {
                runtimeScore = 9;
            }
            if ((runtimeValue >= 3311) && (runtimeValue <= 3320))
            {
                runtimeScore = 8;
            }
            if ((runtimeValue >= 3321) && (runtimeValue <= 3330))
            {
                runtimeScore = 7;
            }
            if ((runtimeValue >= 3331) && (runtimeValue <= 3340))
            {
                runtimeScore = 6;
            }
            if ((runtimeValue >= 3341) && (runtimeValue <= 3350))
            {
                runtimeScore = 5;
            }
            if ((runtimeValue >= 3351) && (runtimeValue <= 3400))
            {
                runtimeScore = 4;
            }
            if ((runtimeValue >= 3401) && (runtimeValue <= 3410))
            {
                runtimeScore = 3;
            }
            if ((runtimeValue >= 3411) && (runtimeValue <= 3420))
            {
                runtimeScore = 2;
            }
            if ((runtimeValue >= 3421) && (runtimeValue <= 3430))
            {
                runtimeScore = 1;
            }
            if (runtimeValue >= 3431)
            {
                runtimeScore = 0;
            }
            [runtime resignFirstResponder];
            
            //Calculate PFT Score:
            pftscore = (pullUpScore + crunchesScore + runtimeScore);
            NSString *pftScoreString = [NSString stringWithFormat:@"%ld", pftscore];
            score.text = pftScoreString;
            
            //Calculate pass or fail:
            //Convert age string to age integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            //Calculate for ages between 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 225)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 175) && (pftscore <= 225))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 135) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 174)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    if (pftscore >= 135)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 27 & 39:
            else if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 200)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 150) && (pftscore <= 199))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 110) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 109)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    if (pftscore >= 110)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 40 & 45:
            else if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 175)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 125) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 88) && (pftscore <= 124))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 87)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    if (pftscore >= 88)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages 46+:
            else if (ageValue >= 46)
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 150)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 100) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 65) && (pftscore <= 99))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 64)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    if (pftscore >= 65)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            [age resignFirstResponder];
        }
        //If at high altitude:
        else if (altitude.selectedSegmentIndex == 1)
        {
            //Calculation for Pull-Ups:
            //Convert string to integer:
            NSString *pullUpText = pullups.text;
            NSInteger pullUpValue = [[ pullUpText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (pullUpValue >= 20)
            {
                pullUpScore = 100;
            }
            else if (pullUpValue == 19)
            {
                pullUpScore = 95;
            }
            else if (pullUpValue == 18)
            {
                pullUpScore = 90;
            }
            else if (pullUpValue == 17)
            {
                pullUpScore = 85;
            }
            else if (pullUpValue == 16)
            {
                pullUpScore = 80;
            }
            else if (pullUpValue == 15)
            {
                pullUpScore = 75;
            }
            else if (pullUpValue == 14)
            {
                pullUpScore = 70;
            }
            else if (pullUpValue == 13)
            {
                pullUpScore = 65;
            }
            else if (pullUpValue == 12)
            {
                pullUpScore = 60;
            }
            else if (pullUpValue == 11)
            {
                pullUpScore = 55;
            }
            else if (pullUpValue == 10)
            {
                pullUpScore = 50;
            }
            else if (pullUpValue == 9)
            {
                pullUpScore = 45;
            }
            else if (pullUpValue == 8)
            {
                pullUpScore = 40;
            }
            else if (pullUpValue == 7)
            {
                pullUpScore = 35;
            }
            else if (pullUpValue == 6)
            {
                pullUpScore = 30;
            }
            else if (pullUpValue == 5)
            {
                pullUpScore = 25;
            }
            else if (pullUpValue == 4)
            {
                pullUpScore = 20;
            }
            else if (pullUpValue == 3)
            {
                pullUpScore = 15;
            }
            else if (pullUpValue == 2)
            {
                pullUpScore = 10;
            }
            else if (pullUpValue == 1)
            {
                pullUpScore = 5;
            }

            [pullups resignFirstResponder];
            
            //Calculate Crunches:
            //Convert string to integer:
            NSString *crunchesText = crunches.text;
            NSInteger crunchesValue = [[crunchesText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (crunchesValue >= 100)
            {
                crunchesScore = 100;
            }
            if (crunchesValue == 99)
            {
                crunchesScore = 99;
            }
            if (crunchesValue == 98)
            {
                crunchesScore = 98;
            }
            if (crunchesValue == 97)
            {
                crunchesScore = 97;
            }
            if (crunchesValue == 96)
            {
                crunchesScore = 96;
            }
            if (crunchesValue == 95)
            {
                crunchesScore = 95;
            }
            if (crunchesValue == 94)
            {
                crunchesScore = 94;
            }
            if (crunchesValue == 93)
            {
                crunchesScore = 93;
            }
            if (crunchesValue == 92)
            {
                crunchesScore = 92;
            }
            if (crunchesValue == 91)
            {
                crunchesScore = 91;
            }
            if (crunchesValue == 90)
            {
                crunchesScore = 90;
            }
            if (crunchesValue == 89)
            {
                crunchesScore = 89;
            }
            if (crunchesValue == 88)
            {
                crunchesScore = 88;
            }
            if (crunchesValue == 87)
            {
                crunchesScore = 87;
            }
            if (crunchesValue == 86)
            {
                crunchesScore = 86;
            }
            if (crunchesValue == 85)
            {
                crunchesScore = 85;
            }
            if (crunchesValue == 84)
            {
                crunchesScore = 84;
            }
            if (crunchesValue == 83)
            {
                crunchesScore = 83;
            }
            if (crunchesValue == 82)
            {
                crunchesScore = 82;
            }
            if (crunchesValue == 81)
            {
                crunchesScore = 81;
            }
            if (crunchesValue == 80)
            {
                crunchesScore = 80;
            }
            if (crunchesValue == 79)
            {
                crunchesScore = 79;
            }
            if (crunchesValue == 78)
            {
                crunchesScore = 78;
            }
            if (crunchesValue == 77)
            {
                crunchesScore = 77;
            }
            if (crunchesValue == 76)
            {
                crunchesScore = 76;
            }
            if (crunchesValue == 75)
            {
                crunchesScore = 75;
            }
            if (crunchesValue == 74)
            {
                crunchesScore = 74;
            }
            if (crunchesValue == 73)
            {
                crunchesScore = 73;
            }
            if (crunchesValue == 72)
            {
                crunchesScore = 72;
            }
            if (crunchesValue == 71)
            {
                crunchesScore = 71;
            }
            if (crunchesValue == 70)
            {
                crunchesScore = 70;
            }
            if (crunchesValue == 69)
            {
                crunchesScore = 69;
            }
            if (crunchesValue == 68)
            {
                crunchesScore = 68;
            }
            if (crunchesValue == 67)
            {
                crunchesScore = 67;
            }
            if (crunchesValue == 66)
            {
                crunchesScore = 66;
            }
            if (crunchesValue == 65)
            {
                crunchesScore = 65;
            }
            if (crunchesValue == 64)
            {
                crunchesScore = 64;
            }
            if (crunchesValue == 63)
            {
                crunchesScore = 63;
            }
            if (crunchesValue == 62)
            {
                crunchesScore = 62;
            }
            if (crunchesValue == 61)
            {
                crunchesScore = 61;
            }
            if (crunchesValue == 60)
            {
                crunchesScore = 60;
            }
            if (crunchesValue == 59)
            {
                crunchesScore = 59;
            }
            if (crunchesValue == 58)
            {
                crunchesScore = 58;
            }
            if (crunchesValue == 57)
            {
                crunchesScore = 57;
            }
            if (crunchesValue == 56)
            {
                crunchesScore = 56;
            }
            if (crunchesValue == 55)
            {
                crunchesScore = 55;
            }
            if (crunchesValue == 54)
            {
                crunchesScore = 54;
            }
            if (crunchesValue == 53)
            {
                crunchesScore = 53;
            }
            if (crunchesValue == 52)
            {
                crunchesScore = 52;
            }
            if (crunchesValue == 51)
            {
                crunchesScore = 51;
            }
            if (crunchesValue == 50)
            {
                crunchesScore = 50;
            }
            if (crunchesValue == 49)
            {
                crunchesScore = 49;
            }
            if (crunchesValue == 48)
            {
                crunchesScore = 48;
            }
            if (crunchesValue == 47)
            {
                crunchesScore = 47;
            }
            if (crunchesValue == 46)
            {
                crunchesScore = 46;
            }
            if (crunchesValue == 45)
            {
                crunchesScore = 45;
            }
            if (crunchesValue == 44)
            {
                crunchesScore = 44;
            }
            if (crunchesValue == 43)
            {
                crunchesScore = 43;
            }
            if (crunchesValue == 42)
            {
                crunchesScore = 42;
            }
            if (crunchesValue == 41)
            {
                crunchesScore = 41;
            }
            if (crunchesValue == 40)
            {
                crunchesScore = 40;
            }
            if (crunchesValue == 39)
            {
                crunchesScore = 39;
            }
            if (crunchesValue == 38)
            {
                crunchesScore = 38;
            }
            if (crunchesValue == 37)
            {
                crunchesScore = 37;
            }
            if (crunchesValue == 36)
            {
                crunchesScore = 36;
            }
            if (crunchesValue == 35)
            {
                crunchesScore = 35;
            }
            if (crunchesValue == 34)
            {
                crunchesScore = 34;
            }
            if (crunchesValue == 33)
            {
                crunchesScore = 33;
            }
            if (crunchesValue == 32)
            {
                crunchesScore = 32;
            }
            if (crunchesValue == 31)
            {
                crunchesScore = 31;
            }
            if (crunchesValue == 30)
            {
                crunchesScore = 30;
            }
            if (crunchesValue == 29)
            {
                crunchesScore = 29;
            }
            if (crunchesValue == 28)
            {
                crunchesScore = 28;
            }
            if (crunchesValue == 27)
            {
                crunchesScore = 27;
            }
            if (crunchesValue == 26)
            {
                crunchesScore = 26;
            }
            if (crunchesValue == 25)
            {
                crunchesScore = 25;
            }
            if (crunchesValue == 24)
            {
                crunchesScore = 24;
            }
            if (crunchesValue == 23)
            {
                crunchesScore = 23;
            }
            if (crunchesValue == 22)
            {
                crunchesScore = 22;
            }
            if (crunchesValue == 21)
            {
                crunchesScore = 21;
            }
            if (crunchesValue == 20)
            {
                crunchesScore = 20;
            }
            if (crunchesValue == 19)
            {
                crunchesScore = 19;
            }
            if (crunchesValue == 18)
            {
                crunchesScore = 18;
            }
            if (crunchesValue == 17)
            {
                crunchesScore = 17;
            }
            if (crunchesValue == 16)
            {
                crunchesScore = 16;
            }
            if (crunchesValue == 15)
            {
                crunchesScore = 15;
            }
            if (crunchesValue == 14)
            {
                crunchesScore = 14;
            }
            if (crunchesValue == 13)
            {
                crunchesScore = 13;
            }
            if (crunchesValue == 12)
            {
                crunchesScore = 12;
            }
            if (crunchesValue == 11)
            {
                crunchesScore = 11;
            }
            if (crunchesValue == 10)
            {
                crunchesScore = 10;
            }
            if (crunchesValue == 9)
            {
                crunchesScore = 9;
            }
            if (crunchesValue == 8)
            {
                crunchesScore = 8;
            }
            if (crunchesValue == 7)
            {
                crunchesScore = 7;
            }
            if (crunchesValue == 6)
            {
                crunchesScore = 6;
            }
            if (crunchesValue == 5)
            {
                crunchesScore = 5;
            }
            if (crunchesValue == 4)
            {
                crunchesScore = 4;
            }
            if (crunchesValue == 3)
            {
                crunchesScore = 3;
            }
            if (crunchesValue == 2)
            {
                crunchesScore = 2;
            }
            if (crunchesValue == 1)
            {
                crunchesScore = 1;
            }
            [crunches resignFirstResponder];
            
            //Calculate run time:
            //Convert string to integer:
            NSString *runtimeText = runtime.text;
            NSInteger runtimeValue = [[runtimeText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            if (runtimeValue <= 1930)
            {
                runtimeScore = 100;
            }
            if ((runtimeValue >= 1931) && (runtimeValue <= 1940))
            {
                runtimeScore = 99;
            }
            if ((runtimeValue >= 1941) && (runtimeValue <= 1950))
            {
                runtimeScore = 98;
            }
            if ((runtimeValue >= 1951) && (runtimeValue <= 2000))
            {
                runtimeScore = 97;
            }
            if ((runtimeValue >= 2001) && (runtimeValue <= 2010))
            {
                runtimeScore = 96;
            }
            if ((runtimeValue >= 2011) && (runtimeValue <= 2020))
            {
                runtimeScore = 95;
            }
            if ((runtimeValue >= 2021) && (runtimeValue <= 2030))
            {
                runtimeScore = 94;
            }
            if ((runtimeValue >= 2031) && (runtimeValue <= 2040))
            {
                runtimeScore = 93;
            }
            if ((runtimeValue >= 2041) && (runtimeValue <= 2050))
            {
                runtimeScore = 92;
            }
            if ((runtimeValue >= 2051) && (runtimeValue <= 2100))
            {
                runtimeScore = 91;
            }
            if ((runtimeValue >= 2101) && (runtimeValue <= 2110))
            {
                runtimeScore = 90;
            }
            if ((runtimeValue >= 2111) && (runtimeValue <= 2120))
            {
                runtimeScore = 89;
            }
            if ((runtimeValue >= 2121) && (runtimeValue <= 2130))
            {
                runtimeScore = 88;
            }
            if ((runtimeValue >= 2131) && (runtimeValue <= 2140))
            {
                runtimeScore = 87;
            }
            if ((runtimeValue >= 2141) && (runtimeValue <= 2150))
            {
                runtimeScore = 86;
            }
            if ((runtimeValue >= 2151) && (runtimeValue <= 2200))
            {
                runtimeScore = 85;
            }
            if ((runtimeValue >= 2201) && (runtimeValue <= 2210))
            {
                runtimeScore = 84;
            }
            if ((runtimeValue >= 2211) && (runtimeValue <= 2220))
            {
                runtimeScore = 83;
            }
            if ((runtimeValue >= 2221) && (runtimeValue <= 2230))
            {
                runtimeScore = 82;
            }
            if ((runtimeValue >= 2231) && (runtimeValue <= 2240))
            {
                runtimeScore = 81;
            }
            if ((runtimeValue >= 2241) && (runtimeValue <= 2250))
            {
                runtimeScore = 80;
            }
            if ((runtimeValue >= 2251) && (runtimeValue <= 2300))
            {
                runtimeScore = 79;
            }
            if ((runtimeValue >= 2301) && (runtimeValue <= 2310))
            {
                runtimeScore = 78;
            }
            if ((runtimeValue >= 2311) && (runtimeValue <= 2320))
            {
                runtimeScore = 77;
            }
            if ((runtimeValue >= 2321) && (runtimeValue <= 2330))
            {
                runtimeScore = 76;
            }
            if ((runtimeValue >= 2331) && (runtimeValue <= 2340))
            {
                runtimeScore = 75;
            }
            if ((runtimeValue >= 2341) && (runtimeValue <= 2350))
            {
                runtimeScore = 74;
            }
            if ((runtimeValue >= 2351) && (runtimeValue <= 2400))
            {
                runtimeScore = 73;
            }
            if ((runtimeValue >= 2401) && (runtimeValue <= 2410))
            {
                runtimeScore = 72;
            }
            if ((runtimeValue >= 2411) && (runtimeValue <= 2420))
            {
                runtimeScore = 71;
            }
            if ((runtimeValue >= 2421) && (runtimeValue <= 2430))
            {
                runtimeScore = 70;
            }
            if ((runtimeValue >= 2431) && (runtimeValue <= 2440))
            {
                runtimeScore = 69;
            }
            if ((runtimeValue >= 2441) && (runtimeValue <= 2450))
            {
                runtimeScore = 68;
            }
            if ((runtimeValue >= 2451) && (runtimeValue <= 2500))
            {
                runtimeScore = 67;
            }
            if ((runtimeValue >= 2501) && (runtimeValue <= 2510))
            {
                runtimeScore = 66;
            }
            if ((runtimeValue >= 2511) && (runtimeValue <= 2520))
            {
                runtimeScore = 65;
            }
            if ((runtimeValue >= 2521) && (runtimeValue <= 2530))
            {
                runtimeScore = 64;
            }
            if ((runtimeValue >= 2531) && (runtimeValue <= 2540))
            {
                runtimeScore = 63;
            }
            if ((runtimeValue >= 2541) && (runtimeValue <= 2550))
            {
                runtimeScore = 62;
            }
            if ((runtimeValue >= 2551) && (runtimeValue <= 2600))
            {
                runtimeScore = 61;
            }
            if ((runtimeValue >= 2601) && (runtimeValue <= 2610))
            {
                runtimeScore = 60;
            }
            if ((runtimeValue >= 2611) && (runtimeValue <= 2620))
            {
                runtimeScore = 59;
            }
            if ((runtimeValue >= 2621) && (runtimeValue <= 2630))
            {
                runtimeScore = 58;
            }
            if ((runtimeValue >= 2631) && (runtimeValue <= 2640))
            {
                runtimeScore = 57;
            }
            if ((runtimeValue >= 2641) && (runtimeValue <= 2650))
            {
                runtimeScore = 56;
            }
            if ((runtimeValue >= 2651) && (runtimeValue <= 2700))
            {
                runtimeScore = 55;
            }
            if ((runtimeValue >= 2701) && (runtimeValue <= 2710))
            {
                runtimeScore = 54;
            }
            if ((runtimeValue >= 2711) && (runtimeValue <= 2720))
            {
                runtimeScore = 53;
            }
            if ((runtimeValue >= 2721) && (runtimeValue <= 2730))
            {
                runtimeScore = 52;
            }
            if ((runtimeValue >= 2731) && (runtimeValue <= 2740))
            {
                runtimeScore = 51;
            }
            if ((runtimeValue >= 2741) && (runtimeValue <= 2750))
            {
                runtimeScore = 50;
            }
            if ((runtimeValue >= 2751) && (runtimeValue <= 2800))
            {
                runtimeScore = 49;
            }
            if ((runtimeValue >= 2801) && (runtimeValue <= 2810))
            {
                runtimeScore = 48;
            }
            if ((runtimeValue >= 2811) && (runtimeValue <= 2820))
            {
                runtimeScore = 47;
            }
            if ((runtimeValue >= 2821) && (runtimeValue <= 2830))
            {
                runtimeScore = 46;
            }
            if ((runtimeValue >= 2831) && (runtimeValue <= 2840))
            {
                runtimeScore = 45;
            }
            if ((runtimeValue >= 2841) && (runtimeValue <= 2850))
            {
                runtimeScore = 44;
            }
            if ((runtimeValue >= 2851) && (runtimeValue <= 2900))
            {
                runtimeScore = 43;
            }
            if ((runtimeValue >= 2901) && (runtimeValue <= 2910))
            {
                runtimeScore = 42;
            }
            if ((runtimeValue >= 2911) && (runtimeValue <= 2920))
            {
                runtimeScore = 41;
            }
            if ((runtimeValue >= 2921) && (runtimeValue <= 2930))
            {
                runtimeScore = 40;
            }
            if ((runtimeValue >= 2931) && (runtimeValue <= 2940))
            {
                runtimeScore = 39;
            }
            if ((runtimeValue >= 2941) && (runtimeValue <= 2950))
            {
                runtimeScore = 38;
            }
            if ((runtimeValue >= 2951) && (runtimeValue <= 3000))
            {
                runtimeScore = 37;
            }
            if ((runtimeValue >= 3001) && (runtimeValue <= 3010))
            {
                runtimeScore = 36;
            }
            if ((runtimeValue >= 3011) && (runtimeValue <= 3020))
            {
                runtimeScore = 35;
            }
            if ((runtimeValue >= 3021) && (runtimeValue <= 3030))
            {
                runtimeScore = 34;
            }
            if ((runtimeValue >= 3031) && (runtimeValue <= 3040))
            {
                runtimeScore = 33;
            }
            if ((runtimeValue >= 3041) && (runtimeValue <= 3050))
            {
                runtimeScore = 32;
            }
            if ((runtimeValue >= 3051) && (runtimeValue <= 3100))
            {
                runtimeScore = 31;
            }
            if ((runtimeValue >= 3101) && (runtimeValue <= 3110))
            {
                runtimeScore = 30;
            }
            if ((runtimeValue >= 3111) && (runtimeValue <= 3120))
            {
                runtimeScore = 29;
            }
            if ((runtimeValue >= 3121) && (runtimeValue <= 3130))
            {
                runtimeScore = 28;
            }
            if ((runtimeValue >= 3131) && (runtimeValue <= 3140))
            {
                runtimeScore = 27;
            }
            if ((runtimeValue >= 3141) && (runtimeValue <= 3150))
            {
                runtimeScore = 26;
            }
            if ((runtimeValue >= 3151) && (runtimeValue <= 3200))
            {
                runtimeScore = 25;
            }
            if ((runtimeValue >= 3201) && (runtimeValue <= 3210))
            {
                runtimeScore = 24;
            }
            if ((runtimeValue >= 3211) && (runtimeValue <= 3220))
            {
                runtimeScore = 23;
            }
            if ((runtimeValue >= 3221) && (runtimeValue <= 3230))
            {
                runtimeScore = 22;
            }
            if ((runtimeValue >= 3231) && (runtimeValue <= 3240))
            {
                runtimeScore = 21;
            }
            if ((runtimeValue >= 3241) && (runtimeValue <= 3250))
            {
                runtimeScore = 20;
            }
            if ((runtimeValue >= 3251) && (runtimeValue <= 3300))
            {
                runtimeScore = 19;
            }
            if ((runtimeValue >= 3301) && (runtimeValue <= 3310))
            {
                runtimeScore = 18;
            }
            if ((runtimeValue >= 3311) && (runtimeValue <= 3320))
            {
                runtimeScore = 17;
            }
            if ((runtimeValue >= 3321) && (runtimeValue <= 3330))
            {
                runtimeScore = 16;
            }
            if ((runtimeValue >= 3331) && (runtimeValue <= 3340))
            {
                runtimeScore = 15;
            }
            if ((runtimeValue >= 3341) && (runtimeValue <= 3350))
            {
                runtimeScore = 14;
            }
            if ((runtimeValue >= 3351) && (runtimeValue <= 3400))
            {
                runtimeScore = 13;
            }
            if ((runtimeValue >= 3401) && (runtimeValue <= 3410))
            {
                runtimeScore = 12;
            }
            if ((runtimeValue >= 3411) && (runtimeValue <= 3420))
            {
                runtimeScore = 11;
            }
            if ((runtimeValue >= 3421) && (runtimeValue <= 3430))
            {
                runtimeScore = 10;
            }
            if ((runtimeValue >= 3431) && (runtimeValue <= 3440))
            {
                runtimeScore = 9;
            }
            if ((runtimeValue >= 3441) && (runtimeValue <= 3450))
            {
                runtimeScore = 8;
            }
            if ((runtimeValue >= 3451) && (runtimeValue <= 3500))
            {
                runtimeScore = 7;
            }
            if ((runtimeValue >= 3501) && (runtimeValue <= 3510))
            {
                runtimeScore = 6;
            }
            if ((runtimeValue >= 3511) && (runtimeValue <= 3520))
            {
                runtimeScore = 5;
            }
            if ((runtimeValue >= 3521) && (runtimeValue <= 3530))
            {
                runtimeScore = 4;
            }
            if ((runtimeValue >= 3531) && (runtimeValue <= 3540))
            {
                runtimeScore = 3;
            }
            if ((runtimeValue >= 3541) && (runtimeValue <= 3550))
            {
                runtimeScore = 2;
            }
            if ((runtimeValue >= 3551) && (runtimeValue <= 3600))
            {
                runtimeScore = 1;
            }
            if (runtimeValue >= 3601)
            {
                runtimeScore = 0;
            }
            [runtime resignFirstResponder];
            
            //Calculate PFT Score:
            pftscore = (pullUpScore + crunchesScore + runtimeScore);
            NSString *pftScoreString = [NSString stringWithFormat:@"%ld", pftscore];
            score.text = pftScoreString;
            
            //Calculate pass or fail:
            //Convert age string to age integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            //Calculate for ages between 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 225)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 175) && (pftscore <= 225))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 135) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 174)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    if (pftscore >= 135)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 27 & 39:
            else if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 200)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 150) && (pftscore <= 199))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 110) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 109)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    if (pftscore >= 110)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 40 & 45:
            else if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 175)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 125) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 88) && (pftscore <= 124))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 87)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    if (pftscore >= 88)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages 46+:
            else if (ageValue >= 46)
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 150)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 100) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 65) && (pftscore <= 99))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 64)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    if (pftscore >= 65)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            [age resignFirstResponder];
        }
    }
    //If gender is Female:
    else if (gender.selectedSegmentIndex == 1)
    {
        //If not at high altitude:
        if (altitude.selectedSegmentIndex == 0)
        {
            //Calculate Flexarm Hang:
            //Convert string to integer:
            NSString *pullUpText = pullups.text;
            NSInteger pullUpValue = [[ pullUpText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];

            if (pullUpValue >= 70)
            {
                pullUpScore = 100;
            }
            else if (pullUpValue == 69)
            {
                pullUpScore = 98;
            }
            else if (pullUpValue == 68)
            {
                pullUpScore = 96;
            }
            else if (pullUpValue == 67)
            {
                pullUpScore = 94;
            }
            else if (pullUpValue == 66)
            {
                pullUpScore = 92;
            }
            else if (pullUpValue == 65)
            {
                pullUpScore = 90;
            }
            else if (pullUpValue == 64)
            {
                pullUpScore = 88;
            }
            else if (pullUpValue == 63)
            {
                pullUpScore = 86;
            }
            else if (pullUpValue == 62)
            {
                pullUpScore = 84;
            }
            else if (pullUpValue == 61)
            {
                pullUpScore = 82;
            }
            else if (pullUpValue == 60)
            {
                pullUpScore = 80;
            }
            else if (pullUpValue == 59)
            {
                pullUpScore = 78;
            }
            else if (pullUpValue == 58)
            {
                pullUpScore = 76;
            }
            else if (pullUpValue == 57)
            {
                pullUpScore = 74;
            }
            else if (pullUpValue == 56)
            {
                pullUpScore = 72;
            }
            else if (pullUpValue == 55)
            {
                pullUpScore = 70;
            }
            else if (pullUpValue == 54)
            {
                pullUpScore = 68;
            }
            else if (pullUpValue == 53)
            {
                pullUpScore = 66;
            }
            else if (pullUpValue == 52)
            {
                pullUpScore = 64;
            }
            else if (pullUpValue == 51)
            {
                pullUpScore = 62;
            }
            else if (pullUpValue == 50)
            {
                pullUpScore = 60;
            }
            else if (pullUpValue == 49)
            {
                pullUpScore = 58;
            }
            else if (pullUpValue == 48)
            {
                pullUpScore = 56;
            }
            else if (pullUpValue == 47)
            {
                pullUpScore = 54;
            }
            else if (pullUpValue == 46)
            {
                pullUpScore = 52;
            }
            else if (pullUpValue == 45)
            {
                pullUpScore = 50;
            }
            else if (pullUpValue == 44)
            {
                pullUpScore = 48;
            }
            else if (pullUpValue == 43)
            {
                pullUpScore = 46;
            }
            else if (pullUpValue == 42)
            {
                pullUpScore = 44;
            }
            else if (pullUpValue == 41)
            {
                pullUpScore = 42;
            }
            else if (pullUpValue == 40)
            {
                pullUpScore = 40;
            }
            else if (pullUpValue == 39)
            {
                pullUpScore = 39;
            }
            else if (pullUpValue == 38)
            {
                pullUpScore = 38;
            }
            else if (pullUpValue == 37)
            {
                pullUpScore = 37;
            }
            else if (pullUpValue == 36)
            {
                pullUpScore = 36;
            }
            else if (pullUpValue == 35)
            {
                pullUpScore = 35;
            }
            else if (pullUpValue == 34)
            {
                pullUpScore = 34;
            }
            else if (pullUpValue == 33)
            {
                pullUpScore = 33;
            }
            else if (pullUpValue == 32)
            {
                pullUpScore = 32;
            }
            else if (pullUpValue == 31)
            {
                pullUpScore = 31;
            }
            else if (pullUpValue == 30)
            {
                pullUpScore = 30;
            }
            else if (pullUpValue == 29)
            {
                pullUpScore = 29;
            }
            else if (pullUpValue == 28)
            {
                pullUpScore = 28;
            }
            else if (pullUpValue == 27)
            {
                pullUpScore = 27;
            }
            else if (pullUpValue == 26)
            {
                pullUpScore = 26;
            }
            else if (pullUpValue == 25)
            {
                pullUpScore = 25;
            }
            else if (pullUpValue == 24)
            {
                pullUpScore = 24;
            }
            else if (pullUpValue == 23)
            {
                pullUpScore = 23;
            }
            else if (pullUpValue == 22)
            {
                pullUpScore = 22;
            }
            else if (pullUpValue == 21)
            {
                pullUpScore = 21;
            }
            else if (pullUpValue == 20)
            {
                pullUpScore = 20;
            }
            else if (pullUpValue == 19)
            {
                pullUpScore = 19;
            }
            else if (pullUpValue == 18)
            {
                pullUpScore = 18;
            }
            else if (pullUpValue == 17)
            {
                pullUpScore = 17;
            }
            else if (pullUpValue == 16)
            {
                pullUpScore = 16;
            }
            else if (pullUpValue == 15)
            {
                pullUpScore = 15;
            }
            else if (pullUpValue == 14)
            {
                pullUpScore = 14;
            }
            else if (pullUpValue == 13)
            {
                pullUpScore = 13;
            }
            else if (pullUpValue == 12)
            {
                pullUpScore = 12;
            }
            else if (pullUpValue == 11)
            {
                pullUpScore = 11;
            }
            else if (pullUpValue == 10)
            {
                pullUpScore = 10;
            }
            else if (pullUpValue == 9)
            {
                pullUpScore = 9;
            }
            else if (pullUpValue == 8)
            {
                pullUpScore = 8;
            }
            else if (pullUpValue == 7)
            {
                pullUpScore = 7;
            }
            else if (pullUpValue == 6)
            {
                pullUpScore = 6;
            }
            else if (pullUpValue == 5)
            {
                pullUpScore = 5;
            }
            else if (pullUpValue == 4)
            {
                pullUpScore = 4;
            }
            else if (pullUpValue == 3)
            {
                pullUpScore = 3;
            }
            else if (pullUpValue == 2)
            {
                pullUpScore = 2;
            }
            else if (pullUpValue == 1)
            {
                pullUpScore = 1;
            }
            [pullups resignFirstResponder];
            
            //Calculate Crunches:
            //Convert string to integer:
            NSString *crunchesText = crunches.text;
            NSInteger crunchesValue = [[crunchesText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (crunchesValue >= 100)
            {
                crunchesScore = 100;
            }
            if (crunchesValue == 99)
            {
                crunchesScore = 99;
            }
            if (crunchesValue == 98)
            {
                crunchesScore = 98;
            }
            if (crunchesValue == 97)
            {
                crunchesScore = 97;
            }
            if (crunchesValue == 96)
            {
                crunchesScore = 96;
            }
            if (crunchesValue == 95)
            {
                crunchesScore = 95;
            }
            if (crunchesValue == 94)
            {
                crunchesScore = 94;
            }
            if (crunchesValue == 93)
            {
                crunchesScore = 93;
            }
            if (crunchesValue == 92)
            {
                crunchesScore = 92;
            }
            if (crunchesValue == 91)
            {
                crunchesScore = 91;
            }
            if (crunchesValue == 90)
            {
                crunchesScore = 90;
            }
            if (crunchesValue == 89)
            {
                crunchesScore = 89;
            }
            if (crunchesValue == 88)
            {
                crunchesScore = 88;
            }
            if (crunchesValue == 87)
            {
                crunchesScore = 87;
            }
            if (crunchesValue == 86)
            {
                crunchesScore = 86;
            }
            if (crunchesValue == 85)
            {
                crunchesScore = 85;
            }
            if (crunchesValue == 84)
            {
                crunchesScore = 84;
            }
            if (crunchesValue == 83)
            {
                crunchesScore = 83;
            }
            if (crunchesValue == 82)
            {
                crunchesScore = 82;
            }
            if (crunchesValue == 81)
            {
                crunchesScore = 81;
            }
            if (crunchesValue == 80)
            {
                crunchesScore = 80;
            }
            if (crunchesValue == 79)
            {
                crunchesScore = 79;
            }
            if (crunchesValue == 78)
            {
                crunchesScore = 78;
            }
            if (crunchesValue == 77)
            {
                crunchesScore = 77;
            }
            if (crunchesValue == 76)
            {
                crunchesScore = 76;
            }
            if (crunchesValue == 75)
            {
                crunchesScore = 75;
            }
            if (crunchesValue == 74)
            {
                crunchesScore = 74;
            }
            if (crunchesValue == 73)
            {
                crunchesScore = 73;
            }
            if (crunchesValue == 72)
            {
                crunchesScore = 72;
            }
            if (crunchesValue == 71)
            {
                crunchesScore = 71;
            }
            if (crunchesValue == 70)
            {
                crunchesScore = 70;
            }
            if (crunchesValue == 69)
            {
                crunchesScore = 69;
            }
            if (crunchesValue == 68)
            {
                crunchesScore = 68;
            }
            if (crunchesValue == 67)
            {
                crunchesScore = 67;
            }
            if (crunchesValue == 66)
            {
                crunchesScore = 66;
            }
            if (crunchesValue == 65)
            {
                crunchesScore = 65;
            }
            if (crunchesValue == 64)
            {
                crunchesScore = 64;
            }
            if (crunchesValue == 63)
            {
                crunchesScore = 63;
            }
            if (crunchesValue == 62)
            {
                crunchesScore = 62;
            }
            if (crunchesValue == 61)
            {
                crunchesScore = 61;
            }
            if (crunchesValue == 60)
            {
                crunchesScore = 60;
            }
            if (crunchesValue == 59)
            {
                crunchesScore = 59;
            }
            if (crunchesValue == 58)
            {
                crunchesScore = 58;
            }
            if (crunchesValue == 57)
            {
                crunchesScore = 57;
            }
            if (crunchesValue == 56)
            {
                crunchesScore = 56;
            }
            if (crunchesValue == 55)
            {
                crunchesScore = 55;
            }
            if (crunchesValue == 54)
            {
                crunchesScore = 54;
            }
            if (crunchesValue == 53)
            {
                crunchesScore = 53;
            }
            if (crunchesValue == 52)
            {
                crunchesScore = 52;
            }
            if (crunchesValue == 51)
            {
                crunchesScore = 51;
            }
            if (crunchesValue == 50)
            {
                crunchesScore = 50;
            }
            if (crunchesValue == 49)
            {
                crunchesScore = 49;
            }
            if (crunchesValue == 48)
            {
                crunchesScore = 48;
            }
            if (crunchesValue == 47)
            {
                crunchesScore = 47;
            }
            if (crunchesValue == 46)
            {
                crunchesScore = 46;
            }
            if (crunchesValue == 45)
            {
                crunchesScore = 45;
            }
            if (crunchesValue == 44)
            {
                crunchesScore = 44;
            }
            if (crunchesValue == 43)
            {
                crunchesScore = 43;
            }
            if (crunchesValue == 42)
            {
                crunchesScore = 42;
            }
            if (crunchesValue == 41)
            {
                crunchesScore = 41;
            }
            if (crunchesValue == 40)
            {
                crunchesScore = 40;
            }
            if (crunchesValue == 39)
            {
                crunchesScore = 39;
            }
            if (crunchesValue == 38)
            {
                crunchesScore = 38;
            }
            if (crunchesValue == 37)
            {
                crunchesScore = 37;
            }
            if (crunchesValue == 36)
            {
                crunchesScore = 36;
            }
            if (crunchesValue == 35)
            {
                crunchesScore = 35;
            }
            if (crunchesValue == 34)
            {
                crunchesScore = 34;
            }
            if (crunchesValue == 33)
            {
                crunchesScore = 33;
            }
            if (crunchesValue == 32)
            {
                crunchesScore = 32;
            }
            if (crunchesValue == 31)
            {
                crunchesScore = 31;
            }
            if (crunchesValue == 30)
            {
                crunchesScore = 30;
            }
            if (crunchesValue == 29)
            {
                crunchesScore = 29;
            }
            if (crunchesValue == 28)
            {
                crunchesScore = 28;
            }
            if (crunchesValue == 27)
            {
                crunchesScore = 27;
            }
            if (crunchesValue == 26)
            {
                crunchesScore = 26;
            }
            if (crunchesValue == 25)
            {
                crunchesScore = 25;
            }
            if (crunchesValue == 24)
            {
                crunchesScore = 24;
            }
            if (crunchesValue == 23)
            {
                crunchesScore = 23;
            }
            if (crunchesValue == 22)
            {
                crunchesScore = 22;
            }
            if (crunchesValue == 21)
            {
                crunchesScore = 21;
            }
            if (crunchesValue == 20)
            {
                crunchesScore = 20;
            }
            if (crunchesValue == 19)
            {
                crunchesScore = 19;
            }
            if (crunchesValue == 18)
            {
                crunchesScore = 18;
            }
            if (crunchesValue == 17)
            {
                crunchesScore = 17;
            }
            if (crunchesValue == 16)
            {
                crunchesScore = 16;
            }
            if (crunchesValue == 15)
            {
                crunchesScore = 15;
            }
            if (crunchesValue == 14)
            {
                crunchesScore = 14;
            }
            if (crunchesValue == 13)
            {
                crunchesScore = 13;
            }
            if (crunchesValue == 12)
            {
                crunchesScore = 12;
            }
            if (crunchesValue == 11)
            {
                crunchesScore = 11;
            }
            if (crunchesValue == 10)
            {
                crunchesScore = 10;
            }
            if (crunchesValue == 9)
            {
                crunchesScore = 9;
            }
            if (crunchesValue == 8)
            {
                crunchesScore = 8;
            }
            if (crunchesValue == 7)
            {
                crunchesScore = 7;
            }
            if (crunchesValue == 6)
            {
                crunchesScore = 6;
            }
            if (crunchesValue == 5)
            {
                crunchesScore = 5;
            }
            if (crunchesValue == 4)
            {
                crunchesScore = 4;
            }
            if (crunchesValue == 3)
            {
                crunchesScore = 3;
            }
            if (crunchesValue == 2)
            {
                crunchesScore = 2;
            }
            if (crunchesValue == 1)
            {
                crunchesScore = 1;
            }
            [crunches resignFirstResponder];
            
            
            //Calculate run time:
            //Convert string to integer:
            NSString *runtimeText = runtime.text;
            NSInteger runtimeValue = [[runtimeText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            if (runtimeValue <= 2100)
            {
                runtimeScore = 100;
            }
            if ((runtimeValue >= 2101) && (runtimeValue <= 2110))
            {
                runtimeScore = 99;
            }
            if ((runtimeValue >= 2111) && (runtimeValue <= 2120))
            {
                runtimeScore = 98;
            }
            if ((runtimeValue >= 2121) && (runtimeValue <= 2130))
            {
                runtimeScore = 97;
            }
            if ((runtimeValue >= 2131) && (runtimeValue <= 2140))
            {
                runtimeScore = 96;
            }
            if ((runtimeValue >= 2141) && (runtimeValue <= 2150))
            {
                runtimeScore = 95;
            }
            if ((runtimeValue >= 2151) && (runtimeValue <= 2200))
            {
                runtimeScore = 94;
            }
            if ((runtimeValue >= 2201) && (runtimeValue <= 2210))
            {
                runtimeScore = 93;
            }
            if ((runtimeValue >= 2211) && (runtimeValue <= 2220))
            {
                runtimeScore = 92;
            }
            if ((runtimeValue >= 2221) && (runtimeValue <= 2230))
            {
                runtimeScore = 91;
            }
            if ((runtimeValue >= 2231) && (runtimeValue <= 2240))
            {
                runtimeScore = 90;
            }
            if ((runtimeValue >= 2241) && (runtimeValue <= 2250))
            {
                runtimeScore = 89;
            }
            if ((runtimeValue >= 2251) && (runtimeValue <= 2300))
            {
                runtimeScore = 88;
            }
            if ((runtimeValue >= 2301) && (runtimeValue <= 2310))
            {
                runtimeScore = 87;
            }
            if ((runtimeValue >= 2311) && (runtimeValue <= 2320))
            {
                runtimeScore = 86;
            }
            if ((runtimeValue >= 2321) && (runtimeValue <= 2330))
            {
                runtimeScore = 85;
            }
            if ((runtimeValue >= 2331) && (runtimeValue <= 2340))
            {
                runtimeScore = 84;
            }
            if ((runtimeValue >= 2341) && (runtimeValue <= 2350))
            {
                runtimeScore = 83;
            }
            if ((runtimeValue >= 2351) && (runtimeValue <= 2400))
            {
                runtimeScore = 82;
            }
            if ((runtimeValue >= 2401) && (runtimeValue <= 2410))
            {
                runtimeScore = 81;
            }
            if ((runtimeValue >= 2411) && (runtimeValue <= 2420))
            {
                runtimeScore = 80;
            }
            if ((runtimeValue >= 2421) && (runtimeValue <= 2430))
            {
                runtimeScore = 79;
            }
            if ((runtimeValue >= 2431) && (runtimeValue <= 2440))
            {
                runtimeScore = 78;
            }
            if ((runtimeValue >= 2441) && (runtimeValue <= 2450))
            {
                runtimeScore = 77;
            }
            if ((runtimeValue >= 2451) && (runtimeValue <= 2500))
            {
                runtimeScore = 76;
            }
            if ((runtimeValue >= 2501) && (runtimeValue <= 2510))
            {
                runtimeScore = 75;
            }
            if ((runtimeValue >= 2511) && (runtimeValue <= 2520))
            {
                runtimeScore = 74;
            }
            if ((runtimeValue >= 2521) && (runtimeValue <= 2530))
            {
                runtimeScore = 73;
            }
            if ((runtimeValue >= 2531) && (runtimeValue <= 2540))
            {
                runtimeScore = 72;
            }
            if ((runtimeValue >= 2541) && (runtimeValue <= 2550))
            {
                runtimeScore = 71;
            }
            if ((runtimeValue >= 2551) && (runtimeValue <= 2600))
            {
                runtimeScore = 70;
            }
            if ((runtimeValue >= 2601) && (runtimeValue <= 2610))
            {
                runtimeScore = 69;
            }
            if ((runtimeValue >= 2611) && (runtimeValue <= 2620))
            {
                runtimeScore = 68;
            }
            if ((runtimeValue >= 2620) && (runtimeValue <= 2630))
            {
                runtimeScore = 67;
            }
            if ((runtimeValue >= 2631) && (runtimeValue <= 2640))
            {
                runtimeScore = 66;
            }
            if ((runtimeValue >= 2641) && (runtimeValue <= 2650))
            {
                runtimeScore = 65;
            }
            if ((runtimeValue >= 2651) && (runtimeValue <= 2700))
            {
                runtimeScore = 64;
            }
            if ((runtimeValue >= 2701) && (runtimeValue <= 2710))
            {
                runtimeScore = 63;
            }
            if ((runtimeValue >= 2711) && (runtimeValue <= 2720))
            {
                runtimeScore = 62;
            }
            if ((runtimeValue >= 2721) && (runtimeValue <= 2730))
            {
                runtimeScore = 61;
            }
            if ((runtimeValue >= 2731) && (runtimeValue <= 2740))
            {
                runtimeScore = 60;
            }
            if ((runtimeValue >= 2741) && (runtimeValue <= 2750))
            {
                runtimeScore = 59;
            }
            if ((runtimeValue >= 2751) && (runtimeValue <= 2800))
            {
                runtimeScore = 58;
            }
            if ((runtimeValue >= 2801) && (runtimeValue <= 2810))
            {
                runtimeScore = 57;
            }
            if ((runtimeValue >= 2811) && (runtimeValue <= 2820))
            {
                runtimeScore = 56;
            }
            if ((runtimeValue >= 2821) && (runtimeValue <= 2830))
            {
                runtimeScore = 55;
            }
            if ((runtimeValue >= 2831) && (runtimeValue <= 2840))
            {
                runtimeScore = 54;
            }
            if ((runtimeValue >= 2841) && (runtimeValue <= 2850))
            {
                runtimeScore = 53;
            }
            if ((runtimeValue >= 2851) && (runtimeValue <= 2900))
            {
                runtimeScore = 52;
            }
            if ((runtimeValue >= 2901) && (runtimeValue <= 2910))
            {
                runtimeScore = 51;
            }
            if ((runtimeValue >= 2911) && (runtimeValue <= 2920))
            {
                runtimeScore = 50;
            }
            if ((runtimeValue >= 2921) && (runtimeValue <= 2930))
            {
                runtimeScore = 49;
            }
            if ((runtimeValue >= 2931) && (runtimeValue <= 2940))
            {
                runtimeScore = 48;
            }
            if ((runtimeValue >= 2941) && (runtimeValue <= 2950))
            {
                runtimeScore = 47;
            }
            if ((runtimeValue >= 2951) && (runtimeValue <= 3000))
            {
                runtimeScore = 46;
            }
            if ((runtimeValue >= 3001) && (runtimeValue <= 3010))
            {
                runtimeScore = 45;
            }
            if ((runtimeValue >= 3011) && (runtimeValue <= 3020))
            {
                runtimeScore = 44;
            }
            if ((runtimeValue >= 3021) && (runtimeValue <= 3030))
            {
                runtimeScore = 43;
            }
            if ((runtimeValue >= 3031) && (runtimeValue <= 3040))
            {
                runtimeScore = 42;
            }
            if ((runtimeValue >= 3041) && (runtimeValue <= 3050))
            {
                runtimeScore = 41;
            }
            if ((runtimeValue >= 3051) && (runtimeValue <= 3100))
            {
                runtimeScore = 40;
            }
            if ((runtimeValue >= 3101) && (runtimeValue <= 3110))
            {
                runtimeScore = 39;
            }
            if ((runtimeValue >= 3111) && (runtimeValue <= 3120))
            {
                runtimeScore = 38;
            }
            if ((runtimeValue >= 3121) && (runtimeValue <= 3130))
            {
                runtimeScore = 37;
            }
            if ((runtimeValue >= 3131) && (runtimeValue <= 3140))
            {
                runtimeScore = 36;
            }
            if ((runtimeValue >= 3141) && (runtimeValue <= 3150))
            {
                runtimeScore = 35;
            }
            if ((runtimeValue >= 3151) && (runtimeValue <= 3200))
            {
                runtimeScore = 34;
            }
            if ((runtimeValue >= 3201) && (runtimeValue <= 3210))
            {
                runtimeScore = 33;
            }
            if ((runtimeValue >= 3211) && (runtimeValue <= 3220))
            {
                runtimeScore = 32;
            }
            if ((runtimeValue >= 3221) && (runtimeValue <= 3230))
            {
                runtimeScore = 31;
            }
            if ((runtimeValue >= 3231) && (runtimeValue <= 3240))
            {
                runtimeScore = 30;
            }
            if ((runtimeValue >= 3241) && (runtimeValue <= 3250))
            {
                runtimeScore = 29;
            }
            if ((runtimeValue >= 3251) && (runtimeValue <= 3300))
            {
                runtimeScore = 28;
            }
            if ((runtimeValue >= 3301) && (runtimeValue <= 3310))
            {
                runtimeScore = 27;
            }
            if ((runtimeValue >= 3311) && (runtimeValue <= 3320))
            {
                runtimeScore = 26;
            }
            if ((runtimeValue >= 3321) && (runtimeValue <= 3330))
            {
                runtimeScore = 25;
            }
            if ((runtimeValue >= 3331) && (runtimeValue <= 3340))
            {
                runtimeScore = 24;
            }
            if ((runtimeValue >= 3341) && (runtimeValue <= 3350))
            {
                runtimeScore = 23;
            }
            if ((runtimeValue >= 3351) && (runtimeValue <= 3400))
            {
                runtimeScore = 22;
            }
            if ((runtimeValue >= 3401) && (runtimeValue <= 3410))
            {
                runtimeScore = 21;
            }
            if ((runtimeValue >= 3411) && (runtimeValue <= 3420))
            {
                runtimeScore = 20;
            }
            if ((runtimeValue >= 3421) && (runtimeValue <= 3430))
            {
                runtimeScore = 19;
            }
            if ((runtimeValue >= 3431) && (runtimeValue <= 3440))
            {
                runtimeScore = 18;
            }
            if ((runtimeValue >= 3441) && (runtimeValue <= 3450))
            {
                runtimeScore = 17;
            }
            if ((runtimeValue >= 3451) && (runtimeValue <= 3500))
            {
                runtimeScore = 16;
            }
            if ((runtimeValue >= 3501) && (runtimeValue <= 3510))
            {
                runtimeScore = 15;
            }
            if ((runtimeValue >= 3511) && (runtimeValue <= 3520))
            {
                runtimeScore = 14;
            }
            if ((runtimeValue >= 3521) && (runtimeValue <= 3530))
            {
                runtimeScore = 13;
            }
            if ((runtimeValue >= 3531) && (runtimeValue <= 3540))
            {
                runtimeScore = 12;
            }
            if ((runtimeValue >= 3541) && (runtimeValue <= 3550))
            {
                runtimeScore = 11;
            }
            if ((runtimeValue >= 3551) && (runtimeValue <= 3600))
            {
                runtimeScore = 10;
            }
            if ((runtimeValue >= 3601) && (runtimeValue <= 3610))
            {
                runtimeScore = 9;
            }
            if ((runtimeValue >= 3611) && (runtimeValue <= 3620))
            {
                runtimeScore = 8;
            }
            if ((runtimeValue >= 3621) && (runtimeValue <= 3630))
            {
                runtimeScore = 7;
            }
            if ((runtimeValue >= 3631) && (runtimeValue <= 3640))
            {
                runtimeScore = 6;
            }
            if ((runtimeValue >= 3641) && (runtimeValue <= 3650))
            {
                runtimeScore = 5;
            }
            if ((runtimeValue >= 3651) && (runtimeValue <= 3700))
            {
                runtimeScore = 4;
            }
            if ((runtimeValue >= 3701) && (runtimeValue <= 3710))
            {
                runtimeScore = 3;
            }
            if ((runtimeValue >= 3711) && (runtimeValue <= 3720))
            {
                runtimeScore = 2;
            }
            if ((runtimeValue >= 3721) && (runtimeValue <= 3730))
            {
                runtimeScore = 1;
            }
            if (runtimeValue >= 3731)
            {
                runtimeScore = 0;
            }
            [runtime resignFirstResponder];
            
            //Calculate PFT Score:
            pftscore = (pullUpScore + crunchesScore + runtimeScore);
            NSString *pftScoreString = [NSString stringWithFormat:@"%ld", pftscore];
            score.text = pftScoreString;
            
            //Calculate pass or fail:
            //Convert age string to age integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            //Calculate for ages between 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 225)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 175) && (pftscore <= 225))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 135) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 174)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    if (pftscore >= 135)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 27 & 39:
            else if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 200)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 150) && (pftscore <= 199))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 110) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 109)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    if (pftscore >= 110)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 40 & 45:
            else if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 175)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 125) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 88) && (pftscore <= 124))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 87)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    if (pftscore >= 88)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages 46+:
            else if (ageValue >= 46)
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 150)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 100) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 65) && (pftscore <= 99))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 64)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    if (pftscore >= 65)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            [age resignFirstResponder];
        }
        //If at high altitude:
        else if (altitude.selectedSegmentIndex == 1)
        {
            //Calculate Flexarm Hang:
            //Covert string to integer:
            //Convert string to integer:
            NSString *pullUpText = pullups.text;
            NSInteger pullUpValue = [[ pullUpText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (pullUpValue >= 70)
            {
                pullUpScore = 100;
            }
            else if (pullUpValue == 69)
            {
                pullUpScore = 98;
            }
            else if (pullUpValue == 68)
            {
                pullUpScore = 96;
            }
            else if (pullUpValue == 67)
            {
                pullUpScore = 94;
            }
            else if (pullUpValue == 66)
            {
                pullUpScore = 92;
            }
            else if (pullUpValue == 65)
            {
                pullUpScore = 90;
            }
            else if (pullUpValue == 64)
            {
                pullUpScore = 88;
            }
            else if (pullUpValue == 63)
            {
                pullUpScore = 86;
            }
            else if (pullUpValue == 62)
            {
                pullUpScore = 84;
            }
            else if (pullUpValue == 61)
            {
                pullUpScore = 82;
            }
            else if (pullUpValue == 60)
            {
                pullUpScore = 80;
            }
            else if (pullUpValue == 59)
            {
                pullUpScore = 78;
            }
            else if (pullUpValue == 58)
            {
                pullUpScore = 76;
            }
            else if (pullUpValue == 57)
            {
                pullUpScore = 74;
            }
            else if (pullUpValue == 56)
            {
                pullUpScore = 72;
            }
            else if (pullUpValue == 55)
            {
                pullUpScore = 70;
            }
            else if (pullUpValue == 54)
            {
                pullUpScore = 68;
            }
            else if (pullUpValue == 53)
            {
                pullUpScore = 66;
            }
            else if (pullUpValue == 52)
            {
                pullUpScore = 64;
            }
            else if (pullUpValue == 51)
            {
                pullUpScore = 62;
            }
            else if (pullUpValue == 50)
            {
                pullUpScore = 60;
            }
            else if (pullUpValue == 49)
            {
                pullUpScore = 58;
            }
            else if (pullUpValue == 48)
            {
                pullUpScore = 56;
            }
            else if (pullUpValue == 47)
            {
                pullUpScore = 54;
            }
            else if (pullUpValue == 46)
            {
                pullUpScore = 52;
            }
            else if (pullUpValue == 45)
            {
                pullUpScore = 50;
            }
            else if (pullUpValue == 44)
            {
                pullUpScore = 48;
            }
            else if (pullUpValue == 43)
            {
                pullUpScore = 46;
            }
            else if (pullUpValue == 42)
            {
                pullUpScore = 44;
            }
            else if (pullUpValue == 41)
            {
                pullUpScore = 42;
            }
            else if (pullUpValue == 40)
            {
                pullUpScore = 40;
            }
            else if (pullUpValue == 39)
            {
                pullUpScore = 39;
            }
            else if (pullUpValue == 38)
            {
                pullUpScore = 38;
            }
            else if (pullUpValue == 37)
            {
                pullUpScore = 37;
            }
            else if (pullUpValue == 36)
            {
                pullUpScore = 36;
            }
            else if (pullUpValue == 35)
            {
                pullUpScore = 35;
            }
            else if (pullUpValue == 34)
            {
                pullUpScore = 34;
            }
            else if (pullUpValue == 33)
            {
                pullUpScore = 33;
            }
            else if (pullUpValue == 32)
            {
                pullUpScore = 32;
            }
            else if (pullUpValue == 31)
            {
                pullUpScore = 31;
            }
            else if (pullUpValue == 30)
            {
                pullUpScore = 30;
            }
            else if (pullUpValue == 29)
            {
                pullUpScore = 29;
            }
            else if (pullUpValue == 28)
            {
                pullUpScore = 28;
            }
            else if (pullUpValue == 27)
            {
                pullUpScore = 27;
            }
            else if (pullUpValue == 26)
            {
                pullUpScore = 26;
            }
            else if (pullUpValue == 25)
            {
                pullUpScore = 25;
            }
            else if (pullUpValue == 24)
            {
                pullUpScore = 24;
            }
            else if (pullUpValue == 23)
            {
                pullUpScore = 23;
            }
            else if (pullUpValue == 22)
            {
                pullUpScore = 22;
            }
            else if (pullUpValue == 21)
            {
                pullUpScore = 21;
            }
            else if (pullUpValue == 20)
            {
                pullUpScore = 20;
            }
            else if (pullUpValue == 19)
            {
                pullUpScore = 19;
            }
            else if (pullUpValue == 18)
            {
                pullUpScore = 18;
            }
            else if (pullUpValue == 17)
            {
                pullUpScore = 17;
            }
            else if (pullUpValue == 16)
            {
                pullUpScore = 16;
            }
            else if (pullUpValue == 15)
            {
                pullUpScore = 15;
            }
            else if (pullUpValue == 14)
            {
                pullUpScore = 14;
            }
            else if (pullUpValue == 13)
            {
                pullUpScore = 13;
            }
            else if (pullUpValue == 12)
            {
                pullUpScore = 12;
            }
            else if (pullUpValue == 11)
            {
                pullUpScore = 11;
            }
            else if (pullUpValue == 10)
            {
                pullUpScore = 10;
            }
            else if (pullUpValue == 9)
            {
                pullUpScore = 9;
            }
            else if (pullUpValue == 8)
            {
                pullUpScore = 8;
            }
            else if (pullUpValue == 7)
            {
                pullUpScore = 7;
            }
            else if (pullUpValue == 6)
            {
                pullUpScore = 6;
            }
            else if (pullUpValue == 5)
            {
                pullUpScore = 5;
            }
            else if (pullUpValue == 4)
            {
                pullUpScore = 4;
            }
            else if (pullUpValue == 3)
            {
                pullUpScore = 3;
            }
            else if (pullUpValue == 2)
            {
                pullUpScore = 2;
            }
            else if (pullUpValue == 1)
            {
                pullUpScore = 1;
            }
            [pullups resignFirstResponder];
            
            //Calculate Crunches:
            //Convert string to integer:
            NSString *crunchesText = crunches.text;
            NSInteger crunchesValue = [[crunchesText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            if (crunchesValue >= 100)
            {
                crunchesScore = 100;
            }
            if (crunchesValue == 99)
            {
                crunchesScore = 99;
            }
            if (crunchesValue == 98)
            {
                crunchesScore = 98;
            }
            if (crunchesValue == 97)
            {
                crunchesScore = 97;
            }
            if (crunchesValue == 96)
            {
                crunchesScore = 96;
            }
            if (crunchesValue == 95)
            {
                crunchesScore = 95;
            }
            if (crunchesValue == 94)
            {
                crunchesScore = 94;
            }
            if (crunchesValue == 93)
            {
                crunchesScore = 93;
            }
            if (crunchesValue == 92)
            {
                crunchesScore = 92;
            }
            if (crunchesValue == 91)
            {
                crunchesScore = 91;
            }
            if (crunchesValue == 90)
            {
                crunchesScore = 90;
            }
            if (crunchesValue == 89)
            {
                crunchesScore = 89;
            }
            if (crunchesValue == 88)
            {
                crunchesScore = 88;
            }
            if (crunchesValue == 87)
            {
                crunchesScore = 87;
            }
            if (crunchesValue == 86)
            {
                crunchesScore = 86;
            }
            if (crunchesValue == 85)
            {
                crunchesScore = 85;
            }
            if (crunchesValue == 84)
            {
                crunchesScore = 84;
            }
            if (crunchesValue == 83)
            {
                crunchesScore = 83;
            }
            if (crunchesValue == 82)
            {
                crunchesScore = 82;
            }
            if (crunchesValue == 81)
            {
                crunchesScore = 81;
            }
            if (crunchesValue == 80)
            {
                crunchesScore = 80;
            }
            if (crunchesValue == 79)
            {
                crunchesScore = 79;
            }
            if (crunchesValue == 78)
            {
                crunchesScore = 78;
            }
            if (crunchesValue == 77)
            {
                crunchesScore = 77;
            }
            if (crunchesValue == 76)
            {
                crunchesScore = 76;
            }
            if (crunchesValue == 75)
            {
                crunchesScore = 75;
            }
            if (crunchesValue == 74)
            {
                crunchesScore = 74;
            }
            if (crunchesValue == 73)
            {
                crunchesScore = 73;
            }
            if (crunchesValue == 72)
            {
                crunchesScore = 72;
            }
            if (crunchesValue == 71)
            {
                crunchesScore = 71;
            }
            if (crunchesValue == 70)
            {
                crunchesScore = 70;
            }
            if (crunchesValue == 69)
            {
                crunchesScore = 69;
            }
            if (crunchesValue == 68)
            {
                crunchesScore = 68;
            }
            if (crunchesValue == 67)
            {
                crunchesScore = 67;
            }
            if (crunchesValue == 66)
            {
                crunchesScore = 66;
            }
            if (crunchesValue == 65)
            {
                crunchesScore = 65;
            }
            if (crunchesValue == 64)
            {
                crunchesScore = 64;
            }
            if (crunchesValue == 63)
            {
                crunchesScore = 63;
            }
            if (crunchesValue == 62)
            {
                crunchesScore = 62;
            }
            if (crunchesValue == 61)
            {
                crunchesScore = 61;
            }
            if (crunchesValue == 60)
            {
                crunchesScore = 60;
            }
            if (crunchesValue == 59)
            {
                crunchesScore = 59;
            }
            if (crunchesValue == 58)
            {
                crunchesScore = 58;
            }
            if (crunchesValue == 57)
            {
                crunchesScore = 57;
            }
            if (crunchesValue == 56)
            {
                crunchesScore = 56;
            }
            if (crunchesValue == 55)
            {
                crunchesScore = 55;
            }
            if (crunchesValue == 54)
            {
                crunchesScore = 54;
            }
            if (crunchesValue == 53)
            {
                crunchesScore = 53;
            }
            if (crunchesValue == 52)
            {
                crunchesScore = 52;
            }
            if (crunchesValue == 51)
            {
                crunchesScore = 51;
            }
            if (crunchesValue == 50)
            {
                crunchesScore = 50;
            }
            if (crunchesValue == 49)
            {
                crunchesScore = 49;
            }
            if (crunchesValue == 48)
            {
                crunchesScore = 48;
            }
            if (crunchesValue == 47)
            {
                crunchesScore = 47;
            }
            if (crunchesValue == 46)
            {
                crunchesScore = 46;
            }
            if (crunchesValue == 45)
            {
                crunchesScore = 45;
            }
            if (crunchesValue == 44)
            {
                crunchesScore = 44;
            }
            if (crunchesValue == 43)
            {
                crunchesScore = 43;
            }
            if (crunchesValue == 42)
            {
                crunchesScore = 42;
            }
            if (crunchesValue == 41)
            {
                crunchesScore = 41;
            }
            if (crunchesValue == 40)
            {
                crunchesScore = 40;
            }
            if (crunchesValue == 39)
            {
                crunchesScore = 39;
            }
            if (crunchesValue == 38)
            {
                crunchesScore = 38;
            }
            if (crunchesValue == 37)
            {
                crunchesScore = 37;
            }
            if (crunchesValue == 36)
            {
                crunchesScore = 36;
            }
            if (crunchesValue == 35)
            {
                crunchesScore = 35;
            }
            if (crunchesValue == 34)
            {
                crunchesScore = 34;
            }
            if (crunchesValue == 33)
            {
                crunchesScore = 33;
            }
            if (crunchesValue == 32)
            {
                crunchesScore = 32;
            }
            if (crunchesValue == 31)
            {
                crunchesScore = 31;
            }
            if (crunchesValue == 30)
            {
                crunchesScore = 30;
            }
            if (crunchesValue == 29)
            {
                crunchesScore = 29;
            }
            if (crunchesValue == 28)
            {
                crunchesScore = 28;
            }
            if (crunchesValue == 27)
            {
                crunchesScore = 27;
            }
            if (crunchesValue == 26)
            {
                crunchesScore = 26;
            }
            if (crunchesValue == 25)
            {
                crunchesScore = 25;
            }
            if (crunchesValue == 24)
            {
                crunchesScore = 24;
            }
            if (crunchesValue == 23)
            {
                crunchesScore = 23;
            }
            if (crunchesValue == 22)
            {
                crunchesScore = 22;
            }
            if (crunchesValue == 21)
            {
                crunchesScore = 21;
            }
            if (crunchesValue == 20)
            {
                crunchesScore = 20;
            }
            if (crunchesValue == 19)
            {
                crunchesScore = 19;
            }
            if (crunchesValue == 18)
            {
                crunchesScore = 18;
            }
            if (crunchesValue == 17)
            {
                crunchesScore = 17;
            }
            if (crunchesValue == 16)
            {
                crunchesScore = 16;
            }
            if (crunchesValue == 15)
            {
                crunchesScore = 15;
            }
            if (crunchesValue == 14)
            {
                crunchesScore = 14;
            }
            if (crunchesValue == 13)
            {
                crunchesScore = 13;
            }
            if (crunchesValue == 12)
            {
                crunchesScore = 12;
            }
            if (crunchesValue == 11)
            {
                crunchesScore = 11;
            }
            if (crunchesValue == 10)
            {
                crunchesScore = 10;
            }
            if (crunchesValue == 9)
            {
                crunchesScore = 9;
            }
            if (crunchesValue == 8)
            {
                crunchesScore = 8;
            }
            if (crunchesValue == 7)
            {
                crunchesScore = 7;
            }
            if (crunchesValue == 6)
            {
                crunchesScore = 6;
            }
            if (crunchesValue == 5)
            {
                crunchesScore = 5;
            }
            if (crunchesValue == 4)
            {
                crunchesScore = 4;
            }
            if (crunchesValue == 3)
            {
                crunchesScore = 3;
            }
            if (crunchesValue == 2)
            {
                crunchesScore = 2;
            }
            if (crunchesValue == 1)
            {
                crunchesScore = 1;
            }
            [crunches resignFirstResponder];
            
            //Calculate run time:
            //Convert string to integer:
            NSString *runtimeText = runtime.text;
            NSInteger runtimeValue = [[runtimeText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            if (runtimeValue <= 2230)
            {
                runtimeScore = 100;
            }
            if ((runtimeValue >= 2231) && (runtimeValue <= 2240))
            {
                runtimeScore = 99;
            }
            if ((runtimeValue >= 2241) && (runtimeValue <= 2250))
            {
                runtimeScore = 98;
            }
            if ((runtimeValue >= 2251) && (runtimeValue <= 2300))
            {
                runtimeScore = 97;
            }
            if ((runtimeValue >= 2301) && (runtimeValue <= 2310))
            {
                runtimeScore = 96;
            }
            if ((runtimeValue >= 2311) && (runtimeValue <= 2320))
            {
                runtimeScore = 95;
            }
            if ((runtimeValue >= 2321) && (runtimeValue <= 2330))
            {
                runtimeScore = 94;
            }
            if ((runtimeValue >= 2331) && (runtimeValue <= 2340))
            {
                runtimeScore = 93;
            }
            if ((runtimeValue >= 2341) && (runtimeValue <= 2350))
            {
                runtimeScore = 92;
            }
            if ((runtimeValue >= 2351) && (runtimeValue <= 2400))
            {
                runtimeScore = 91;
            }
            if ((runtimeValue >= 2401) && (runtimeValue <= 2410))
            {
                runtimeScore = 90;
            }
            if ((runtimeValue >= 2411) && (runtimeValue <= 2420))
            {
                runtimeScore = 89;
            }
            if ((runtimeValue >= 2421) && (runtimeValue <= 2430))
            {
                runtimeScore = 88;
            }
            if ((runtimeValue >= 2431) && (runtimeValue <= 2440))
            {
                runtimeScore = 87;
            }
            if ((runtimeValue >= 2441) && (runtimeValue <= 2450))
            {
                runtimeScore = 86;
            }
            if ((runtimeValue >= 2451) && (runtimeValue <= 2500))
            {
                runtimeScore = 85;
            }
            if ((runtimeValue >= 2501) && (runtimeValue <= 2510))
            {
                runtimeScore = 84;
            }
            if ((runtimeValue >= 2511) && (runtimeValue <= 2520))
            {
                runtimeScore = 83;
            }
            if ((runtimeValue >= 2521) && (runtimeValue <= 2530))
            {
                runtimeScore = 82;
            }
            if ((runtimeValue >= 2531) && (runtimeValue <= 2540))
            {
                runtimeScore = 81;
            }
            if ((runtimeValue >= 2541) && (runtimeValue <= 2550))
            {
                runtimeScore = 80;
            }
            if ((runtimeValue >= 2551) && (runtimeValue <= 2600))
            {
                runtimeScore = 79;
            }
            if ((runtimeValue >= 2601) && (runtimeValue <= 2610))
            {
                runtimeScore = 78;
            }
            if ((runtimeValue >= 2611) && (runtimeValue <= 2620))
            {
                runtimeScore = 77;
            }
            if ((runtimeValue >= 2621) && (runtimeValue <= 2630))
            {
                runtimeScore = 76;
            }
            if ((runtimeValue >= 2631) && (runtimeValue <= 2640))
            {
                runtimeScore = 75;
            }
            if ((runtimeValue >= 2641) && (runtimeValue <= 2650))
            {
                runtimeScore = 74;
            }
            if ((runtimeValue >= 2651) && (runtimeValue <= 2700))
            {
                runtimeScore = 73;
            }
            if ((runtimeValue >= 2701) && (runtimeValue <= 2710))
            {
                runtimeScore = 72;
            }
            if ((runtimeValue >= 2711) && (runtimeValue <= 2720))
            {
                runtimeScore = 71;
            }
            if ((runtimeValue >= 2721) && (runtimeValue <= 2730))
            {
                runtimeScore = 70;
            }
            if ((runtimeValue >= 2731) && (runtimeValue <= 2740))
            {
                runtimeScore = 69;
            }
            if ((runtimeValue >= 2741) && (runtimeValue <= 2750))
            {
                runtimeScore = 68;
            }
            if ((runtimeValue >= 2751) && (runtimeValue <= 2800))
            {
                runtimeScore = 67;
            }
            if ((runtimeValue >= 2801) && (runtimeValue <= 2810))
            {
                runtimeScore = 66;
            }
            if ((runtimeValue >= 2811) && (runtimeValue <= 2820))
            {
                runtimeScore = 65;
            }
            if ((runtimeValue >= 2821) && (runtimeValue <= 2830))
            {
                runtimeScore = 64;
            }
            if ((runtimeValue >= 2831) && (runtimeValue <= 2840))
            {
                runtimeScore = 63;
            }
            if ((runtimeValue >= 2841) && (runtimeValue <= 2850))
            {
                runtimeScore = 62;
            }
            if ((runtimeValue >= 2851) && (runtimeValue <= 2900))
            {
                runtimeScore = 61;
            }
            if ((runtimeValue >= 2901) && (runtimeValue <= 2910))
            {
                runtimeScore = 60;
            }
            if ((runtimeValue >= 2911) && (runtimeValue <= 2920))
            {
                runtimeScore = 59;
            }
            if ((runtimeValue >= 2921) && (runtimeValue <= 2930))
            {
                runtimeScore = 58;
            }
            if ((runtimeValue >= 2931) && (runtimeValue <= 2940))
            {
                runtimeScore = 57;
            }
            if ((runtimeValue >= 2941) && (runtimeValue <= 2950))
            {
                runtimeScore = 56;
            }
            if ((runtimeValue >= 2951) && (runtimeValue <= 3000))
            {
                runtimeScore = 55;
            }
            if ((runtimeValue >= 3001) && (runtimeValue <= 3010))
            {
                runtimeScore = 54;
            }
            if ((runtimeValue >= 3011) && (runtimeValue <= 3020))
            {
                runtimeScore = 53;
            }
            if ((runtimeValue >= 3021) && (runtimeValue <= 3030))
            {
                runtimeScore = 52;
            }
            if ((runtimeValue >= 3031) && (runtimeValue <= 3040))
            {
                runtimeScore = 51;
            }
            if ((runtimeValue >= 3041) && (runtimeValue <= 3050))
            {
                runtimeScore = 50;
            }
            if ((runtimeValue >= 3051) && (runtimeValue <= 3100))
            {
                runtimeScore = 49;
            }
            if ((runtimeValue >= 3101) && (runtimeValue <= 3110))
            {
                runtimeScore = 48;
            }
            if ((runtimeValue >= 3111) && (runtimeValue <= 3120))
            {
                runtimeScore = 47;
            }
            if ((runtimeValue >= 3121) && (runtimeValue <= 3130))
            {
                runtimeScore = 46;
            }
            if ((runtimeValue >= 3131) && (runtimeValue <= 3140))
            {
                runtimeScore = 45;
            }
            if ((runtimeValue >= 3141) && (runtimeValue <= 3150))
            {
                runtimeScore = 44;
            }
            if ((runtimeValue >= 3151) && (runtimeValue <= 3200))
            {
                runtimeScore = 43;
            }
            if ((runtimeValue >= 3201) && (runtimeValue <= 3210))
            {
                runtimeScore = 42;
            }
            if ((runtimeValue >= 3211) && (runtimeValue <= 3220))
            {
                runtimeScore = 41;
            }
            if ((runtimeValue >= 3221) && (runtimeValue <= 3230))
            {
                runtimeScore = 40;
            }
            if ((runtimeValue >= 3231) && (runtimeValue <= 3240))
            {
                runtimeScore = 39;
            }
            if ((runtimeValue >= 3241) && (runtimeValue <= 3250))
            {
                runtimeScore = 38;
            }
            if ((runtimeValue >= 3251) && (runtimeValue <= 3300))
            {
                runtimeScore = 37;
            }
            if ((runtimeValue >= 3301) && (runtimeValue <= 3310))
            {
                runtimeScore = 36;
            }
            if ((runtimeValue >= 3311) && (runtimeValue <= 3320))
            {
                runtimeScore = 35;
            }
            if ((runtimeValue >= 3321) && (runtimeValue <= 3330))
            {
                runtimeScore = 34;
            }
            if ((runtimeValue >= 3331) && (runtimeValue <= 3340))
            {
                runtimeScore = 33;
            }
            if ((runtimeValue >= 3341) && (runtimeValue <= 3350))
            {
                runtimeScore = 32;
            }
            if ((runtimeValue >= 3351) && (runtimeValue <= 3400))
            {
                runtimeScore = 31;
            }
            if ((runtimeValue >= 3401) && (runtimeValue <= 3410))
            {
                runtimeScore = 30;
            }
            if ((runtimeValue >= 3411) && (runtimeValue <= 3420))
            {
                runtimeScore = 29;
            }
            if ((runtimeValue >= 3421) && (runtimeValue <= 3430))
            {
                runtimeScore = 28;
            }
            if ((runtimeValue >= 3431) && (runtimeValue <= 3440))
            {
                runtimeScore = 27;
            }
            if ((runtimeValue >= 3441) && (runtimeValue <= 3450))
            {
                runtimeScore = 26;
            }
            if ((runtimeValue >= 3451) && (runtimeValue <= 3500))
            {
                runtimeScore = 25;
            }
            if ((runtimeValue >= 3501) && (runtimeValue <= 3510))
            {
                runtimeScore = 24;
            }
            if ((runtimeValue >= 3511) && (runtimeValue <= 3520))
            {
                runtimeScore = 23;
            }
            if ((runtimeValue >= 3521) && (runtimeValue <= 3530))
            {
                runtimeScore = 22;
            }
            if ((runtimeValue >= 3531) && (runtimeValue <= 3540))
            {
                runtimeScore = 21;
            }
            if ((runtimeValue >= 3541) && (runtimeValue <= 3550))
            {
                runtimeScore = 20;
            }
            if ((runtimeValue >= 3551) && (runtimeValue <= 3600))
            {
                runtimeScore = 19;
            }
            if ((runtimeValue >= 3601) && (runtimeValue <= 3610))
            {
                runtimeScore = 18;
            }
            if ((runtimeValue >= 3611) && (runtimeValue <= 3620))
            {
                runtimeScore = 17;
            }
            if ((runtimeValue >= 3621) && (runtimeValue <= 3630))
            {
                runtimeScore = 16;
            }
            if ((runtimeValue >= 3631) && (runtimeValue <= 3640))
            {
                runtimeScore = 15;
            }
            if ((runtimeValue >= 3641) && (runtimeValue <= 3650))
            {
                runtimeScore = 14;
            }
            if ((runtimeValue >= 3651) && (runtimeValue <= 3700))
            {
                runtimeScore = 13;
            }
            if ((runtimeValue >= 3701) && (runtimeValue <= 3710))
            {
                runtimeScore = 12;
            }
            if ((runtimeValue >= 3711) && (runtimeValue <= 3720))
            {
                runtimeScore = 11;
            }
            if ((runtimeValue >= 3721) && (runtimeValue <= 3730))
            {
                runtimeScore = 10;
            }
            if ((runtimeValue >= 3731) && (runtimeValue <= 3740))
            {
                runtimeScore = 9;
            }
            if ((runtimeValue >= 3741) && (runtimeValue <= 3750))
            {
                runtimeScore = 8;
            }
            if ((runtimeValue >= 3751) && (runtimeValue <= 3800))
            {
                runtimeScore = 7;
            }
            if ((runtimeValue >= 3801) && (runtimeValue <= 3810))
            {
                runtimeScore = 6;
            }
            if ((runtimeValue >= 3811) && (runtimeValue <= 3820))
            {
                runtimeScore = 5;
            }
            if ((runtimeValue >= 3821) && (runtimeValue <= 3830))
            {
                runtimeScore = 4;
            }
            if ((runtimeValue >= 3831) && (runtimeValue <= 3840))
            {
                runtimeScore = 3;
            }
            if ((runtimeValue >= 3841) && (runtimeValue <= 3850))
            {
                runtimeScore = 2;
            }
            if ((runtimeValue >= 3851) && (runtimeValue <= 3900))
            {
                runtimeScore = 1;
            }
            if (runtimeValue >= 3901)
            {
                runtimeScore = 0;
            }
            [runtime resignFirstResponder];
            
            //Calculate PFT Score:
            pftscore = (pullUpScore + crunchesScore + runtimeScore);
            NSString *pftScoreString = [NSString stringWithFormat:@"%ld", pftscore];
            score.text = pftScoreString;
            
            //Calculate pass or fail:
            //Convert age string to age integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            
            //Calculate for ages between 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 225)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 175) && (pftscore <= 225))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 135) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 174)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    if (pftscore >= 135)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 50) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore >= 40))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 49) && (runtimeScore <= 39))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 27 & 39:
            else if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 200)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 150) && (pftscore <= 199))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 110) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 109)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    if (pftscore >= 110)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 34))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 33))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages between 40 & 45:
            else if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 175)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 125) && (pftscore <= 174))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 88) && (pftscore <= 124))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 87)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    if (pftscore >= 88)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 45) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore >= 28))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 44) && (runtimeScore <= 27))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            //Calculate for ages 46+:
            else if (ageValue >= 46)
            {
                //Calculate 1st/2nd/3rd class:
                if (pftscore >= 150)
                {
                    pftClass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((pftscore >= 100) && (pftscore <= 149))
                {
                    pftClass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((pftscore >= 65) && (pftscore <= 99))
                {
                    pftClass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (pftscore <= 64)
                {
                    pftClass.text = [NSString stringWithFormat:@"No Class"];
                }
                //Calculate Pass/Fail:
                if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    if (pftscore >= 65)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                }
                else if ((pullUpScore >= 15) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore >= 15) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore >= 40) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore >= 10))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                else if ((pullUpScore <= 14) && (crunchesScore <= 39) && (runtimeScore <= 9))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            [age resignFirstResponder];
        }
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
