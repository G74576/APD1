//
//  CFTViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/14/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "CFTViewController.h"

@interface CFTViewController ()

@end

@implementation CFTViewController
@synthesize gender, age, mtc, amo, muf, altitude, status, score, cftclass;

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

-(IBAction)onClick:(id)sender
{
    //If gender is Male:
    if (gender.selectedSegmentIndex == 0)
    {
        //If not at high altitude:
        if (altitude.selectedSegmentIndex == 0)
        {
            //Convert age string to integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert mtc string to integer:
            NSString *mtcText = mtc.text;
            NSInteger mtcValue = [[mtcText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert ammo string to integer:
            NSString *amoText = amo.text;
            NSInteger amoValue = [[amoText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert muf string to integer:
            NSString *mufText = muf.text;
            NSInteger mufValue = [[mufText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Calculate between ages 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate MTC
                if (mtcValue <= 245)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue == 246) || (mtcValue == 247))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue == 248) || (mtcValue == 249))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue == 250) || (mtcValue == 251))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue == 252) || (mtcValue == 253))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 254) && (mtcValue <= 256))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue == 257) || (mtcValue == 258))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue == 259) || (mtcValue == 300))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue == 301) || (mtcValue == 302))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 303) && (mtcValue <= 305))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue == 306) || (mtcValue == 307))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue == 308) || (mtcValue == 309))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue == 310) || (mtcValue == 311))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue >= 312) && (mtcValue <= 314))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue == 315) || (mtcValue == 316))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 317) || (mtcValue == 318))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue == 319) || (mtcValue == 320))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 321) && (mtcValue <= 323))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue == 324) || (mtcValue == 325))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue == 326) || (mtcValue == 327))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue == 328) || (mtcValue == 329))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 330) && (mtcValue <= 332))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue == 333) || (mtcValue == 334))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue == 335) || (mtcValue == 336))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue == 337) || (mtcValue == 338))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 339) && (mtcValue <= 341))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue == 342) || (mtcValue == 343))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue == 344) || (mtcValue == 345))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue == 346) || (mtcValue == 347))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 348) && (mtcValue <= 350))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue == 351) || (mtcValue == 352))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue == 353) || (mtcValue == 354))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue == 355) || (mtcValue == 356))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 357) && (mtcValue <= 359))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue == 400) || (mtcValue == 401))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue == 402) || (mtcValue == 403))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue == 404) || (mtcValue == 405))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 406) && (mtcValue <= 408))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue == 409) || (mtcValue == 410))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue == 411) || (mtcValue == 412))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 413)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 414)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 91)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 90) || (amoValue == 89))
                {
                    amoScore = 99;
                }
                else if (amoValue == 88)
                {
                    amoScore = 98;
                }
                else if ((amoValue == 87) || (amoValue == 86))
                {
                    amoScore = 97;
                }
                else if (amoValue == 85)
                {
                    amoScore = 96;
                }
                else if (amoValue == 84)
                {
                    amoScore = 95;
                }
                else if ((amoValue == 83) || (amoValue == 82))
                {
                    amoScore = 94;
                }
                else if (amoValue == 81)
                {
                    amoScore = 93;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 92;
                }
                else if (amoValue == 78)
                {
                    amoScore = 91;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 90;
                }
                else if (amoValue == 75)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 74) || (amoValue == 73))
                {
                    amoScore = 88;
                }
                else if (amoValue == 72)
                {
                    amoScore = 87;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 86;
                }
                else if (amoValue == 69)
                {
                    amoScore = 85;
                }
                else if (amoValue == 68)
                {
                    amoScore = 84;
                }
                else if ((amoValue == 67) || (amoValue == 66))
                {
                    amoScore = 83;
                }
                else if (amoValue == 65)
                {
                    amoScore = 82;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 81;
                }
                else if (amoValue == 62)
                {
                    amoScore = 80;
                }
                else if ((amoValue == 61) || (amoValue == 60))
                {
                    amoScore = 79;
                }
                else if (amoValue == 59)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 58) || (amoValue == 57))
                {
                    amoScore = 77;
                }
                else if (amoValue == 56)
                {
                    amoScore = 76;
                }
                else if (amoValue == 55)
                {
                    amoScore = 75;
                }
                else if ((amoValue == 54) || (amoValue == 53))
                {
                    amoScore = 74;
                }
                else if (amoValue == 52)
                {
                    amoScore = 73;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 72;
                }
                else if (amoValue == 49)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 70;
                }
                else if (amoValue == 46)
                {
                    amoScore = 69;
                }
                else if ((amoValue == 45) || (amoValue == 44))
                {
                    amoScore = 68;
                }
                else if (amoValue == 43)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 66;
                }
                else if (amoValue == 40)
                {
                    amoScore = 65;
                }
                else if (amoValue == 39)
                {
                    amoScore = 64;
                }
                else if ((amoValue == 38) || (amoValue == 37))
                {
                    amoScore = 63;
                }
                else if (amoValue == 36)
                {
                    amoScore = 62;
                }
                else if ((amoValue == 35) || (amoValue == 34))
                {
                    amoScore = 61;
                }
                else if (amoValue == 33)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 32)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 214)
                {
                    mufScore = 100;
                }
                else if ((mufValue == 215) || (mufValue == 216))
                {
                    mufScore = 99;
                }
                else if ((mufValue == 217) || (mufValue == 218))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 219) && (mufValue <= 221))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 222) && (mufValue <= 224))
                {
                    mufScore = 96;
                }
                else if ((mufValue == 225) || (mufValue == 226))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 227) && (mufValue <= 229))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 230) && (mufValue <= 232))
                {
                    mufScore = 93;
                }
                else if ((mufValue == 233) || (mufValue == 234))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 235) && (mufValue <= 237))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 238) && (mufValue <= 240))
                {
                    mufScore = 90;
                }
                else if ((mufValue == 241) || (mufValue == 242))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 243) && (mufValue <= 245))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 246) && (mufValue <= 248))
                {
                    mufScore = 87;
                }
                else if ((mufValue == 249) || (mufValue == 250))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 251) && (mufValue <= 253))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 254) && (mufValue <= 256))
                {
                    mufScore = 84;
                }
                else if ((mufValue == 257) || (mufValue == 258))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 259) && (mufValue <= 301))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 302) && (mufValue <= 304))
                {
                    mufScore = 81;
                }
                else if ((mufValue == 305) || (mufValue == 306))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 307) && (mufValue <= 309))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 310) && (mufValue <= 312))
                {
                    mufScore = 78;
                }
                else if ((mufValue == 313) || (mufValue == 314))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 315) && (mufValue <= 317))
                {
                    mufScore = 76;
                }
                else if ((mufValue == 318) || (mufValue == 319))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 320) && (mufValue <= 322))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 323) && (mufValue <= 325))
                {
                    mufScore = 73;
                }
                else if ((mufValue == 326) || (mufValue == 327))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 328) && (mufValue <= 330))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 331) && (mufValue <= 333))
                {
                    mufScore = 70;
                }
                else if ((mufValue == 334) || (mufValue == 335))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 336) && (mufValue <= 338))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 339) && (mufValue <= 341))
                {
                    mufScore = 67;
                }
                else if ((mufValue == 342) || (mufValue == 343))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 344) && (mufValue <= 346))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 347) && (mufValue <= 349))
                {
                    mufScore = 64;
                }
                else if ((mufValue == 350) || (mufValue == 351))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 352) && (mufValue <= 354))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 355) && (mufValue <= 357))
                {
                    mufScore = 61;
                }
                else if (mufValue == 358)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 359)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            
            //Calculate between ages 27 & 39:
            if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate MTC:
                if (mtcValue <= 251)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue == 252) || (mtcValue == 253))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue == 254) || (mtcValue == 255))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 256) && (mtcValue <= 258))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue == 259) || (mtcValue == 300))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 301) && (mtcValue <= 303))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue == 304) || (mtcValue == 305))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 306) && (mtcValue <= 308))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue == 309) || (mtcValue == 310))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 311) && (mtcValue <= 313))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue == 314) || (mtcValue == 315))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue == 316) || (mtcValue == 317))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 318) && (mtcValue <= 320))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue == 321) || (mtcValue == 322))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 323) && (mtcValue <= 325))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 326) || (mtcValue == 327))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 328) && (mtcValue <= 330))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue == 331) || (mtcValue == 332))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 333) && (mtcValue <= 335))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue == 336) || (mtcValue == 337))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 338) && (mtcValue <= 340))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue == 341) || (mtcValue == 342))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 343) && (mtcValue <= 345))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue == 346) || (mtcValue == 347))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 348) && (mtcValue <= 350))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue == 351) || (mtcValue == 352))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 353) && (mtcValue <= 355))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue == 356) || (mtcValue == 357))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 358) && (mtcValue <= 400))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue == 401) || (mtcValue == 402))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 403) && (mtcValue <= 405))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue == 406) || (mtcValue == 407))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue == 408) || (mtcValue == 409))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 410) && (mtcValue <= 412))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue == 413) || (mtcValue == 414))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 415) && (mtcValue <= 417))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue == 418) || (mtcValue == 419))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 420) && (mtcValue <= 422))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue == 423) || (mtcValue == 424))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 425) && (mtcValue <= 427))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 428)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 429)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 97)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 96) || (amoValue == 95))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 94) || (amoValue == 93))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 92) || (amoValue == 91))
                {
                    amoScore = 97;
                }
                else if (amoValue == 90)
                {
                    amoScore = 96;
                }
                else if ((amoValue == 89) || (amoValue == 88))
                {
                    amoScore = 95;
                }
                else if ((amoValue == 87) || (amoValue == 86))
                {
                    amoScore = 94;
                }
                else if (amoValue == 85)
                {
                    amoScore = 93;
                }
                else if ((amoValue == 84) || (amoValue == 83))
                {
                    amoScore = 92;
                }
                else if ((amoValue == 81) || (amoValue == 81))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 90;
                }
                else if (amoValue == 78)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 88;
                }
                else if ((amoValue == 75) || (amoValue == 74))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 73) || (amoValue == 72))
                {
                    amoScore = 86;
                }
                else if (amoValue == 71)
                {
                    amoScore = 85;
                }
                else if ((amoValue == 70) || (amoValue == 69))
                {
                    amoScore = 84;
                }
                else if ((amoValue == 68) || (amoValue == 67))
                {
                    amoScore = 83;
                }
                else if (amoValue == 66)
                {
                    amoScore = 82;
                }
                else if ((amoValue == 65) || (amoValue == 64))
                {
                    amoScore = 81;
                }
                else if ((amoValue == 63) || (amoValue == 62))
                {
                    amoScore = 80;
                }
                else if ((amoValue == 61) || (amoValue == 60))
                {
                    amoScore = 79;
                }
                else if (amoValue == 59)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 58) || (amoValue == 57))
                {
                    amoScore = 77;
                }
                else if ((amoValue == 56) || (amoValue == 55))
                {
                    amoScore = 76;
                }
                else if (amoValue == 54)
                {
                    amoScore = 75;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 73;
                }
                else if ((amoValue == 49) || (amoValue == 48))
                {
                    amoScore = 72;
                }
                else if (amoValue == 47)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 44) || (amoValue == 43))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 68;
                }
                else if (amoValue == 40)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 39) || (amoValue == 38))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 65;
                }
                else if (amoValue == 35)
                {
                    amoScore = 64;
                }
                else if ((amoValue == 34) || (amoValue == 33))
                {
                    amoScore = 63;
                }
                else if ((amoValue == 32) || (amoValue == 31))
                {
                    amoScore = 62;
                }
                else if ((amoValue == 30) || (amoValue == 29))
                {
                    amoScore = 61;
                }
                else if (amoValue == 28)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 27)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 226)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 227) && (mufValue <= 231))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 232) && (mufValue <= 234))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 235) && (mufValue <= 237))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 238) && (mufValue <= 241))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 242) && (mufValue <= 244))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 245) && (mufValue <= 248))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 249) && (mufValue <= 251))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 252) && (mufValue <= 255))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 256) && (mufValue <= 258))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 259) && (mufValue <= 301))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 302) && (mufValue <= 305))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 306) && (mufValue <= 308))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 309) && (mufValue <= 312))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 313) && (mufValue <= 315))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 316) && (mufValue <= 319))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 320) && (mufValue <= 322))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 323) && (mufValue <= 325))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 326) && (mufValue <= 329))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 330) && (mufValue <= 332))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 333) && (mufValue <= 336))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 337) && (mufValue <= 339))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 340) && (mufValue <= 343))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 344) && (mufValue <= 346))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 347) && (mufValue <= 349))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 350) && (mufValue <= 353))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 354) && (mufValue <= 356))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 357) && (mufValue <= 400))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 401) && (mufValue <= 403))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 404) && (mufValue <= 407))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 408) && (mufValue <= 410))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 411) && (mufValue <= 413))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 414) && (mufValue <= 417))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 418) && (mufValue <= 420))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 421) && (mufValue <= 424))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 425) && (mufValue <= 427))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 428) && (mufValue <= 430))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 431) && (mufValue <= 334))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 435) && (mufValue <= 437))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 438) && (mufValue <= 441))
                {
                    mufScore = 61;
                }
                else if (mufValue == 442)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 443)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            
            //Calculate between ages 40 & 45:
            if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate MTC:
                if (mtcValue <= 303)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue >= 304) && (mtcValue <= 307))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue >= 308) && (mtcValue <= 310))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 311) && (mtcValue <= 314))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue >= 315) && (mtcValue <= 317))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 318) && (mtcValue <= 320))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue >= 321) && (mtcValue <= 323))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 324) && (mtcValue <= 326))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue >= 327) && (mtcValue <= 329))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 330) && (mtcValue <= 332))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue >= 333) && (mtcValue <= 335))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue >= 336) && (mtcValue <= 338))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 339) && (mtcValue <= 341))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue == 342) || (mtcValue == 343))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 344) && (mtcValue <= 346))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 347) || (mtcValue == 348))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 349) && (mtcValue <= 352))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 353) && (mtcValue <= 355))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 356) && (mtcValue <= 358))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue >= 359) && (mtcValue <= 401))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 402) && (mtcValue <= 404))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 405) && (mtcValue <= 407))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 408) && (mtcValue <= 410))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue >= 411) && (mtcValue <= 414))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 415) && (mtcValue <= 417))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 418) && (mtcValue <= 420))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 421) && (mtcValue <= 423))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue >= 424) && (mtcValue <= 426))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 427) && (mtcValue <= 429))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 430) && (mtcValue <= 433))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 434) && (mtcValue <= 436))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue >= 437) && (mtcValue <= 439))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue >= 440) && (mtcValue <= 442))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 443) && (mtcValue <= 445))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue >= 446) && (mtcValue <= 448))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 449) && (mtcValue <= 451))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue >= 452) && (mtcValue <= 455))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 456) && (mtcValue <= 458))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue >= 459) && (mtcValue <= 501))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 502) && (mtcValue <= 504))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 505)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 506)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 89)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 88) || (amoValue == 87))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 86) || (amoValue == 85))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 84) || (amoValue == 83))
                {
                    amoScore = 97;
                }
                else if ((amoValue == 82) || (amoValue == 81))
                {
                    amoScore = 96;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 95;
                }
                else if (amoValue == 78)
                {
                    amoScore = 94;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 93;
                }
                else if ((amoValue == 75) || (amoValue == 75))
                {
                    amoScore = 92;
                }
                else if ((amoValue == 73) || (amoValue == 72))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 90;
                }
                else if (amoValue == 69)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 68) || (amoValue == 67))
                {
                    amoScore = 88;
                }
                else if ((amoValue == 66) || (amoValue == 65))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 86;
                }
                else if ((amoValue == 62) || (amoValue == 61))
                {
                    amoScore = 85;
                }
                else if ((amoValue == 60) || (amoValue == 59))
                {
                    amoScore = 84;
                }
                else if (amoValue == 58)
                {
                    amoScore = 83;
                }
                else if ((amoValue == 57) || (amoValue == 56))
                {
                    amoScore = 82;
                }
                else if ((amoValue == 55) || (amoValue == 54))
                {
                    amoScore = 81;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 80;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 79;
                }
                else if (amoValue == 49)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 77;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 76;
                }
                else if ((amoValue == 44) || (amoValue == 43))
                {
                    amoScore = 75;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 40) || (amoValue == 39))
                {
                    amoScore = 73;
                }
                else if (amoValue == 38)
                {
                    amoScore = 72;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 71;
                }
                else if ((amoValue == 35) || (amoValue == 34))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 33) || (amoValue == 32))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 31) || (amoValue == 30))
                {
                    amoScore = 68;
                }
                else if (amoValue == 29)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 28) || (amoValue == 27))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 26) || (amoValue == 25))
                {
                    amoScore = 65;
                }
                else if ((amoValue == 24) || (amoValue == 23))
                {
                    amoScore = 64;
                }
                else if ((amoValue == 22) || (amoValue == 21))
                {
                    amoScore = 63;
                }
                else if ((amoValue == 20) || (amoValue == 19))
                {
                    amoScore = 62;
                }
                else if (amoValue == 18)
                {
                    amoScore = 61;
                }
                else if (amoValue == 17)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 16)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 234)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 235) && (mufValue <= 238))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 239) && (mufValue <= 243))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 244) && (mufValue <= 249))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 250) && (mufValue <= 254))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 255) && (mufValue <= 259))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 300) && (mufValue <= 304))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 305) && (mufValue <= 310))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 311) && (mufValue <= 315))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 316) && (mufValue <= 320))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 321) && (mufValue <= 326))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 327) && (mufValue <= 331))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 332) && (mufValue <= 336))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 337) && (mufValue <= 341))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 342) && (mufValue <= 347))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 348) && (mufValue <= 352))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 353) && (mufValue <= 357))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 358) && (mufValue <= 402))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 403) && (mufValue <= 408))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 409) && (mufValue <= 413))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 414) && (mufValue <= 418))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 419) && (mufValue <= 423))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 424) && (mufValue <= 429))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 430) && (mufValue <= 434))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 435) && (mufValue <= 439))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 440) && (mufValue <= 444))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 445) && (mufValue <= 450))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 451) && (mufValue <= 455))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 456) && (mufValue <= 500))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 501) && (mufValue <= 506))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 507) && (mufValue <= 511))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 512) && (mufValue <= 516))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 517) && (mufValue <= 521))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 522) && (mufValue <= 527))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 528) && (mufValue <= 532))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 533) && (mufValue <= 537))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 538) && (mufValue <= 542))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 543) && (mufValue <= 548))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 549) && (mufValue <= 553))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 554) && (mufValue <= 558))
                {
                    mufScore = 61;
                }
                else if (mufValue == 559)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 600)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            
            //Calculate ages 46+:
            if (ageValue >= 46)
            {
                //Calculate MTC:
                if (mtcValue <= 305)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue >= 306) && (mtcValue <= 309))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue >= 310) && (mtcValue <= 312))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 313) && (mtcValue <= 315))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue >= 316) && (mtcValue <= 318))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 319) && (mtcValue <= 322))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue >= 323) && (mtcValue <= 325))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 326) && (mtcValue <= 328))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue >= 329) && (mtcValue <= 331))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 332) && (mtcValue <= 334))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue >= 335) && (mtcValue <= 337))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue >= 338) && (mtcValue <= 340))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 341) && (mtcValue <= 343))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue >= 344) && (mtcValue <= 346))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 347) && (mtcValue <= 349))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue >= 350) && (mtcValue <= 352))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 353) && (mtcValue <= 356))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 357) && (mtcValue <= 359))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 400) && (mtcValue <= 402))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue >= 403) && (mtcValue <= 404))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 406) && (mtcValue <= 408))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 409) && (mtcValue <= 411))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 412) && (mtcValue <= 414))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue >= 415) && (mtcValue <= 417))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 418) && (mtcValue <= 420))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 421) && (mtcValue <= 423))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 424) && (mtcValue <= 427))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue >= 428) && (mtcValue <= 430))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 431) && (mtcValue <= 433))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 434) && (mtcValue <= 436))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 437) && (mtcValue <= 439))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue >= 440) && (mtcValue <= 442))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue >= 443) && (mtcValue <= 445))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 446) && (mtcValue <= 448))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue >= 449) && (mtcValue <= 451))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 452) && (mtcValue <= 454))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue >= 455) && (mtcValue <= 457))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 458) && (mtcValue <= 500))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue >= 501) && (mtcValue <= 503))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 504) && (mtcValue <= 506))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 507)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 508)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 86)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 85) || (amoValue == 84))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 83) || (amoValue == 82))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 81) || (amoValue == 80))
                {
                    amoScore = 97;
                }
                else if (amoValue == 79)
                {
                    amoScore = 96;
                }
                else if ((amoValue == 78) || (amoValue == 77))
                {
                    amoScore = 95;
                }
                else if ((amoValue == 76) || (amoValue == 75))
                {
                    amoScore = 94;
                }
                else if ((amoValue == 74) || (amoValue == 73))
                {
                    amoScore = 93;
                }
                else if (amoValue == 72)
                {
                    amoScore = 92;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 69) || (amoValue == 68))
                {
                    amoScore = 90;
                }
                else if ((amoValue == 67) || (amoValue == 66))
                {
                    amoScore = 89;
                }
                else if (amoValue == 65)
                {
                    amoScore = 88;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 62) || (amoValue == 61))
                {
                    amoScore = 86;
                }
                else if ((amoValue == 60) || (amoValue == 59))
                {
                    amoScore = 85;
                }
                else if (amoValue == 58)
                {
                    amoScore = 84;
                }
                else if ((amoValue == 57) || (amoValue == 56))
                {
                    amoScore = 83;
                }
                else if ((amoValue == 55) || (amoValue == 54))
                {
                    amoScore = 82;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 81;
                }
                else if (amoValue == 51)
                {
                    amoScore = 80;
                }
                else if ((amoValue == 50) || (amoValue == 49))
                {
                    amoScore = 79;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 78;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 77;
                }
                else if (amoValue == 44)
                {
                    amoScore = 76;
                }
                else if ((amoValue == 43) || (amoValue == 42))
                {
                    amoScore = 75;
                }
                else if ((amoValue == 41) || (amoValue == 40))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 39) || (amoValue == 38))
                {
                    amoScore = 73;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 72;
                }
                else if (amoValue == 35)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 34) || (amoValue == 33))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 32) || (amoValue == 31))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 30) || (amoValue == 29))
                {
                    amoScore = 68;
                }
                else if (amoValue == 28)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 27) || (amoValue == 26))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 25) || (amoValue == 24))
                {
                    amoScore = 65;
                }
                else if ((amoValue == 23) || (amoValue == 22))
                {
                    amoScore = 64;
                }
                else if (amoValue == 21)
                {
                    amoScore = 63;
                }
                else if ((amoValue == 20) || (amoValue == 19))
                {
                    amoScore = 62;
                }
                else if ((amoValue == 18) || (amoValue == 17))
                {
                    amoScore = 61;
                }
                else if (amoValue == 16)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 15)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 252)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 253) && (mufValue <= 256))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 257) && (mufValue <= 301))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 302) && (mufValue <= 306))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 307) && (mufValue <= 311))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 312) && (mufValue <= 316))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 317) && (mufValue <= 321))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 322) && (mufValue <= 326))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 327) && (mufValue <= 331))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 332) && (mufValue <= 336))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 337) && (mufValue <= 341))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 342) && (mufValue <= 345))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 346) && (mufValue <= 350))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 351) && (mufValue <= 355))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 356) && (mufValue <= 400))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 401) && (mufValue <= 405))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 406) && (mufValue <= 410))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 411) && (mufValue <= 415))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 416) && (mufValue <= 420))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 421) && (mufValue <= 425))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 426) && (mufValue <= 430))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 431) && (mufValue <= 435))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 436) && (mufValue <= 440))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 441) && (mufValue <= 445))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 446) && (mufValue <= 450))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 451) && (mufValue <= 455))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 456) && (mufValue <= 500))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 501) && (mufValue <= 505))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 506) && (mufValue <= 510))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 511) && (mufValue <= 515))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 516) && (mufValue <= 520))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 521) && (mufValue <= 524))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 525) && (mufValue <= 529))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 530) && (mufValue <= 534))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 535) && (mufValue <= 539))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 540) && (mufValue <= 544))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 545) && (mufValue <= 549))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 550) && (mufValue <= 554))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 555) && (mufValue <= 559))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 600) && (mufValue <= 604))
                {
                    mufScore = 61;
                }
                else if ((mufValue >= 605) && (mufValue <= 609))
                {
                    mufScore = 60;
                }
                else if (mufValue >= 610)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            [age resignFirstResponder];
        }
        
/////////If at high altitude:
        else if (altitude.selectedSegmentIndex == 1)
        {
            //Convert age string to integer:
            NSString *ageText = age.text;
            NSInteger ageValue = [[ageText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert mtc string to integer:
            NSString *mtcText = mtc.text;
            NSInteger mtcValue = [[mtcText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert ammo string to integer:
            NSString *amoText = amo.text;
            NSInteger amoValue = [[amoText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Convert muf string to integer:
            NSString *mufText = muf.text;
            NSInteger mufValue = [[mufText stringByReplacingOccurrencesOfString:@" " withString:@" "]intValue];
            //Calculate between ages 17 & 26:
            if ((ageValue >= 17) && (ageValue <= 26))
            {
                //Calculate MTC
                if (mtcValue <= 253)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue == 254) || (mtcValue == 255))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue == 256) || (mtcValue == 257))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue == 258) || (mtcValue == 259))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue == 300) || (mtcValue == 301))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 301) && (mtcValue <= 304))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue == 305) || (mtcValue == 306))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue == 307) || (mtcValue == 308))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue == 309) || (mtcValue == 310))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 311) && (mtcValue <= 313))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue == 314) || (mtcValue == 315))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue == 316) || (mtcValue == 317))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue == 318) || (mtcValue == 319))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue >= 320) && (mtcValue <= 322))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue == 323) || (mtcValue == 324))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 325) || (mtcValue == 326))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue == 327) || (mtcValue == 328))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 329) && (mtcValue <= 331))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue == 332) || (mtcValue == 333))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue == 334) || (mtcValue == 335))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue == 336) || (mtcValue == 337))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 338) && (mtcValue <= 340))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue == 341) || (mtcValue == 342))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue == 343) || (mtcValue == 344))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue == 345) || (mtcValue == 346))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 347) && (mtcValue <= 349))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue == 350) || (mtcValue == 351))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue == 352) || (mtcValue == 353))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue == 354) || (mtcValue == 355))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 356) && (mtcValue <= 358))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue == 359) || (mtcValue == 400))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue == 401) || (mtcValue == 402))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue == 402) || (mtcValue == 404))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 405) && (mtcValue <= 407))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue == 408) || (mtcValue == 409))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue == 410) || (mtcValue == 411))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue == 412) || (mtcValue == 413))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 414) && (mtcValue <= 416))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue == 417) || (mtcValue == 418))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue == 419) || (mtcValue == 420))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 421)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 422)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 91)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 90) || (amoValue == 89))
                {
                    amoScore = 99;
                }
                else if (amoValue == 88)
                {
                    amoScore = 98;
                }
                else if ((amoValue == 87) || (amoValue == 86))
                {
                    amoScore = 97;
                }
                else if (amoValue == 85)
                {
                    amoScore = 96;
                }
                else if (amoValue == 84)
                {
                    amoScore = 95;
                }
                else if ((amoValue == 83) || (amoValue == 82))
                {
                    amoScore = 94;
                }
                else if (amoValue == 81)
                {
                    amoScore = 93;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 92;
                }
                else if (amoValue == 78)
                {
                    amoScore = 91;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 90;
                }
                else if (amoValue == 75)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 74) || (amoValue == 73))
                {
                    amoScore = 88;
                }
                else if (amoValue == 72)
                {
                    amoScore = 87;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 86;
                }
                else if (amoValue == 69)
                {
                    amoScore = 85;
                }
                else if (amoValue == 68)
                {
                    amoScore = 84;
                }
                else if ((amoValue == 67) || (amoValue == 66))
                {
                    amoScore = 83;
                }
                else if (amoValue == 65)
                {
                    amoScore = 82;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 81;
                }
                else if (amoValue == 62)
                {
                    amoScore = 80;
                }
                else if ((amoValue == 61) || (amoValue == 60))
                {
                    amoScore = 79;
                }
                else if (amoValue == 59)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 58) || (amoValue == 57))
                {
                    amoScore = 77;
                }
                else if (amoValue == 56)
                {
                    amoScore = 76;
                }
                else if (amoValue == 55)
                {
                    amoScore = 75;
                }
                else if ((amoValue == 54) || (amoValue == 53))
                {
                    amoScore = 74;
                }
                else if (amoValue == 52)
                {
                    amoScore = 73;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 72;
                }
                else if (amoValue == 49)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 70;
                }
                else if (amoValue == 46)
                {
                    amoScore = 69;
                }
                else if ((amoValue == 45) || (amoValue == 44))
                {
                    amoScore = 68;
                }
                else if (amoValue == 43)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 66;
                }
                else if (amoValue == 40)
                {
                    amoScore = 65;
                }
                else if (amoValue == 39)
                {
                    amoScore = 64;
                }
                else if ((amoValue == 38) || (amoValue == 37))
                {
                    amoScore = 63;
                }
                else if (amoValue == 36)
                {
                    amoScore = 62;
                }
                else if ((amoValue == 35) || (amoValue == 34))
                {
                    amoScore = 61;
                }
                else if (amoValue == 33)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 32)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 222)
                {
                    mufScore = 100;
                }
                else if ((mufValue == 223) || (mufValue == 224))
                {
                    mufScore = 99;
                }
                else if ((mufValue == 225) || (mufValue == 226))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 227) && (mufValue <= 229))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 230) && (mufValue <= 232))
                {
                    mufScore = 96;
                }
                else if ((mufValue == 233) || (mufValue == 234))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 235) && (mufValue <= 237))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 238) && (mufValue <= 240))
                {
                    mufScore = 93;
                }
                else if ((mufValue == 241) || (mufValue == 242))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 243) && (mufValue <= 245))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 246) && (mufValue <= 248))
                {
                    mufScore = 90;
                }
                else if ((mufValue == 249) || (mufValue == 250))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 251) && (mufValue <= 253))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 254) && (mufValue <= 256))
                {
                    mufScore = 87;
                }
                else if ((mufValue == 257) || (mufValue == 258))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 259) && (mufValue <= 301))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 302) && (mufValue <= 304))
                {
                    mufScore = 84;
                }
                else if ((mufValue == 305) || (mufValue == 306))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 307) && (mufValue <= 309))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 310) && (mufValue <= 312))
                {
                    mufScore = 81;
                }
                else if ((mufValue == 313) || (mufValue == 314))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 315) && (mufValue <= 317))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 318) && (mufValue <= 320))
                {
                    mufScore = 78;
                }
                else if ((mufValue == 321) || (mufValue == 322))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 323) && (mufValue <= 325))
                {
                    mufScore = 76;
                }
                else if ((mufValue == 326) || (mufValue == 327))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 328) && (mufValue <= 330))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 331) && (mufValue <= 333))
                {
                    mufScore = 73;
                }
                else if ((mufValue == 334) || (mufValue == 335))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 336) && (mufValue <= 338))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 339) && (mufValue <= 341))
                {
                    mufScore = 70;
                }
                else if ((mufValue == 342) || (mufValue == 343))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 344) && (mufValue <= 346))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 347) && (mufValue <= 349))
                {
                    mufScore = 67;
                }
                else if ((mufValue == 350) || (mufValue == 351))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 352) && (mufValue <= 354))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 355) && (mufValue <= 357))
                {
                    mufScore = 64;
                }
                else if ((mufValue == 358) || (mufValue == 359))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 400) && (mufValue <= 402))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 403) && (mufValue <= 405))
                {
                    mufScore = 61;
                }
                else if (mufValue == 406)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 407)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
            }
            
            //Calculate between ages 27 & 39:
            if ((ageValue >= 27) && (ageValue <= 39))
            {
                //Calculate MTC:
                if (mtcValue <= 256)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue == 257) || (mtcValue == 258))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue == 259) || (mtcValue == 300))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 301) && (mtcValue <= 303))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue == 304) || (mtcValue == 305))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 306) && (mtcValue <= 308))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue == 309) || (mtcValue == 310))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 311) && (mtcValue <= 313))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue == 314) || (mtcValue == 315))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 316) && (mtcValue <= 318))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue == 319) || (mtcValue == 320))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue == 321) || (mtcValue == 322))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 323) && (mtcValue <= 325))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue == 326) || (mtcValue == 327))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 328) && (mtcValue <= 330))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 331) || (mtcValue == 332))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 333) && (mtcValue <= 335))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue == 336) || (mtcValue == 337))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 338) && (mtcValue <= 340))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue == 341) || (mtcValue == 342))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 343) && (mtcValue <= 345))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue == 346) || (mtcValue == 347))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 348) && (mtcValue <= 350))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue == 351) || (mtcValue == 352))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 353) && (mtcValue <= 355))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue == 356) || (mtcValue == 357))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 358) && (mtcValue <= 400))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue == 401) || (mtcValue == 402))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 403) && (mtcValue <= 405))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue == 406) || (mtcValue == 407))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 408) && (mtcValue <= 410))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue == 411) || (mtcValue == 412))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue == 413) || (mtcValue == 414))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 415) && (mtcValue <= 417))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue == 418) || (mtcValue == 419))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 420) && (mtcValue <= 422))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue == 423) || (mtcValue == 424))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 425) && (mtcValue <= 427))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue == 428) || (mtcValue == 429))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 430) && (mtcValue <= 432))
                {
                    mtcScore = 61;
                }
                else if ((mtcValue == 433) || (mtcValue == 434))
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 435)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 97)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 96) || (amoValue == 95))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 94) || (amoValue == 93))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 92) || (amoValue == 91))
                {
                    amoScore = 97;
                }
                else if (amoValue == 90)
                {
                    amoScore = 96;
                }
                else if ((amoValue == 89) || (amoValue == 88))
                {
                    amoScore = 95;
                }
                else if ((amoValue == 87) || (amoValue == 86))
                {
                    amoScore = 94;
                }
                else if (amoValue == 85)
                {
                    amoScore = 93;
                }
                else if ((amoValue == 84) || (amoValue == 83))
                {
                    amoScore = 92;
                }
                else if ((amoValue == 81) || (amoValue == 81))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 90;
                }
                else if (amoValue == 78)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 88;
                }
                else if ((amoValue == 75) || (amoValue == 74))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 73) || (amoValue == 72))
                {
                    amoScore = 86;
                }
                else if (amoValue == 71)
                {
                    amoScore = 85;
                }
                else if ((amoValue == 70) || (amoValue == 69))
                {
                    amoScore = 84;
                }
                else if ((amoValue == 68) || (amoValue == 67))
                {
                    amoScore = 83;
                }
                else if (amoValue == 66)
                {
                    amoScore = 82;
                }
                else if ((amoValue == 65) || (amoValue == 64))
                {
                    amoScore = 81;
                }
                else if ((amoValue == 63) || (amoValue == 62))
                {
                    amoScore = 80;
                }
                else if ((amoValue == 61) || (amoValue == 60))
                {
                    amoScore = 79;
                }
                else if (amoValue == 59)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 58) || (amoValue == 57))
                {
                    amoScore = 77;
                }
                else if ((amoValue == 56) || (amoValue == 55))
                {
                    amoScore = 76;
                }
                else if (amoValue == 54)
                {
                    amoScore = 75;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 73;
                }
                else if ((amoValue == 49) || (amoValue == 48))
                {
                    amoScore = 72;
                }
                else if (amoValue == 47)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 44) || (amoValue == 43))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 68;
                }
                else if (amoValue == 40)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 39) || (amoValue == 38))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 65;
                }
                else if (amoValue == 35)
                {
                    amoScore = 64;
                }
                else if ((amoValue == 34) || (amoValue == 33))
                {
                    amoScore = 63;
                }
                else if ((amoValue == 32) || (amoValue == 31))
                {
                    amoScore = 62;
                }
                else if ((amoValue == 30) || (amoValue == 29))
                {
                    amoScore = 61;
                }
                else if (amoValue == 28)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 27)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 234)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 235) && (mufValue <= 239))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 240) && (mufValue <= 242))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 243) && (mufValue <= 245))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 246) && (mufValue <= 249))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 250) && (mufValue <= 252))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 253) && (mufValue <= 256))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 257) && (mufValue <= 259))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 300) && (mufValue <= 303))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 304) && (mufValue <= 306))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 307) && (mufValue <= 309))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 310) && (mufValue <= 313))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 314) && (mufValue <= 316))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 317) && (mufValue <= 320))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 321) && (mufValue <= 323))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 324) && (mufValue <= 327))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 328) && (mufValue <= 330))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 331) && (mufValue <= 333))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 334) && (mufValue <= 337))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 338) && (mufValue <= 340))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 341) && (mufValue <= 344))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 345) && (mufValue <= 347))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 348) && (mufValue <= 351))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 352) && (mufValue <= 254))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 355) && (mufValue <= 357))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 358) && (mufValue <= 401))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 402) && (mufValue <= 404))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 405) && (mufValue <= 408))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 409) && (mufValue <= 411))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 412) && (mufValue <= 415))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 416) && (mufValue <= 418))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 419) && (mufValue <= 421))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 422) && (mufValue <= 425))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 426) && (mufValue <= 428))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 429) && (mufValue <= 432))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 433) && (mufValue <= 435))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 436) && (mufValue <= 438))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 439) && (mufValue <= 442))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 443) && (mufValue <= 445))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 446) && (mufValue <= 449))
                {
                    mufScore = 61;
                }
                else if (mufValue == 450)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 451)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            
            //Calculate between ages 40 & 45:
            if ((ageValue >= 40) && (ageValue <= 45))
            {
                //Calculate MTC:
                if (mtcValue <= 309)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue >= 310) && (mtcValue <= 313))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue >= 314) && (mtcValue <= 316))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 317) && (mtcValue <= 320))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue >= 321) && (mtcValue <= 323))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 324) && (mtcValue <= 326))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue >= 327) && (mtcValue <= 329))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 330) && (mtcValue <= 332))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue >= 333) && (mtcValue <= 335))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 336) && (mtcValue <= 338))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue >= 339) && (mtcValue <= 341))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue >= 342) && (mtcValue <= 344))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 345) && (mtcValue <= 347))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue == 348) || (mtcValue == 349))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 350) && (mtcValue <= 352))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue == 353) || (mtcValue == 354))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 355) && (mtcValue <= 358))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 359) && (mtcValue <= 401))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 402) && (mtcValue <= 404))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue >= 405) && (mtcValue <= 407))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 408) && (mtcValue <= 410))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 411) && (mtcValue <= 413))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 414) && (mtcValue <= 416))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue >= 417) && (mtcValue <= 420))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 421) && (mtcValue <= 423))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 424) && (mtcValue <= 426))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 427) && (mtcValue <= 429))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue >= 430) && (mtcValue <= 432))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 433) && (mtcValue <= 435))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 436) && (mtcValue <= 439))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 440) && (mtcValue <= 442))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue >= 443) && (mtcValue <= 445))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue >= 446) && (mtcValue <= 448))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 449) && (mtcValue <= 450))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue >= 451) && (mtcValue <= 454))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 455) && (mtcValue <= 457))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue >= 458) && (mtcValue <= 501))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 502) && (mtcValue <= 504))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue >= 505) && (mtcValue <= 507))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 508) && (mtcValue <= 510))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 511)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 512)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 89)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 88) || (amoValue == 87))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 86) || (amoValue == 85))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 84) || (amoValue == 83))
                {
                    amoScore = 97;
                }
                else if ((amoValue == 82) || (amoValue == 81))
                {
                    amoScore = 96;
                }
                else if ((amoValue == 80) || (amoValue == 79))
                {
                    amoScore = 95;
                }
                else if (amoValue == 78)
                {
                    amoScore = 94;
                }
                else if ((amoValue == 77) || (amoValue == 76))
                {
                    amoScore = 93;
                }
                else if ((amoValue == 75) || (amoValue == 75))
                {
                    amoScore = 92;
                }
                else if ((amoValue == 73) || (amoValue == 72))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 90;
                }
                else if (amoValue == 69)
                {
                    amoScore = 89;
                }
                else if ((amoValue == 68) || (amoValue == 67))
                {
                    amoScore = 88;
                }
                else if ((amoValue == 66) || (amoValue == 65))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 86;
                }
                else if ((amoValue == 62) || (amoValue == 61))
                {
                    amoScore = 85;
                }
                else if ((amoValue == 60) || (amoValue == 59))
                {
                    amoScore = 84;
                }
                else if (amoValue == 58)
                {
                    amoScore = 83;
                }
                else if ((amoValue == 57) || (amoValue == 56))
                {
                    amoScore = 82;
                }
                else if ((amoValue == 55) || (amoValue == 54))
                {
                    amoScore = 81;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 80;
                }
                else if ((amoValue == 51) || (amoValue == 50))
                {
                    amoScore = 79;
                }
                else if (amoValue == 49)
                {
                    amoScore = 78;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 77;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 76;
                }
                else if ((amoValue == 44) || (amoValue == 43))
                {
                    amoScore = 75;
                }
                else if ((amoValue == 42) || (amoValue == 41))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 40) || (amoValue == 39))
                {
                    amoScore = 73;
                }
                else if (amoValue == 38)
                {
                    amoScore = 72;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 71;
                }
                else if ((amoValue == 35) || (amoValue == 34))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 33) || (amoValue == 32))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 31) || (amoValue == 30))
                {
                    amoScore = 68;
                }
                else if (amoValue == 29)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 28) || (amoValue == 27))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 26) || (amoValue == 25))
                {
                    amoScore = 65;
                }
                else if ((amoValue == 24) || (amoValue == 23))
                {
                    amoScore = 64;
                }
                else if ((amoValue == 22) || (amoValue == 21))
                {
                    amoScore = 63;
                }
                else if ((amoValue == 20) || (amoValue == 19))
                {
                    amoScore = 62;
                }
                else if (amoValue == 18)
                {
                    amoScore = 61;
                }
                else if (amoValue == 17)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 16)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 244)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 245) && (mufValue <= 248))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 249) && (mufValue <= 253))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 254) && (mufValue <= 259))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 300) && (mufValue <= 304))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 305) && (mufValue <= 309))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 310) && (mufValue <= 314))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 315) && (mufValue <= 320))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 321) && (mufValue <= 325))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 326) && (mufValue <= 330))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 331) && (mufValue <= 336))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 337) && (mufValue <= 341))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 342) && (mufValue <= 346))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 347) && (mufValue <= 351))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 352) && (mufValue <= 357))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 358) && (mufValue <= 402))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 403) && (mufValue <= 407))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 408) && (mufValue <= 412))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 413) && (mufValue <= 418))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 419) && (mufValue <= 423))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 424) && (mufValue <= 428))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 429) && (mufValue <= 433))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 434) && (mufValue <= 439))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 440) && (mufValue <= 444))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 445) && (mufValue <= 449))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 450) && (mufValue <= 454))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 455) && (mufValue <= 500))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 501) && (mufValue <= 505))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 506) && (mufValue <= 510))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 511) && (mufValue <= 516))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 517) && (mufValue <= 521))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 522) && (mufValue <= 526))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 527) && (mufValue <= 531))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 532) && (mufValue <= 537))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 538) && (mufValue <= 542))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 543) && (mufValue <= 547))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 548) && (mufValue <= 552))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 553) && (mufValue <= 558))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 559) && (mufValue <= 603))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 604) && (mufValue <= 608))
                {
                    mufScore = 61;
                }
                else if (mufValue == 609)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 610)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            
            //Calculate ages 46+:
            if (ageValue >= 46)
            {
                //Calculate MTC:
                if (mtcValue <= 311)
                {
                    mtcScore = 100;
                }
                else if ((mtcValue >= 312) && (mtcValue <= 315))
                {
                    mtcScore = 99;
                }
                else if ((mtcValue >= 316) && (mtcValue <= 318))
                {
                    mtcScore = 98;
                }
                else if ((mtcValue >= 319) && (mtcValue <= 321))
                {
                    mtcScore = 97;
                }
                else if ((mtcValue >= 322) && (mtcValue <= 324))
                {
                    mtcScore = 96;
                }
                else if ((mtcValue >= 325) && (mtcValue <= 328))
                {
                    mtcScore = 95;
                }
                else if ((mtcValue >= 329) && (mtcValue <= 331))
                {
                    mtcScore = 94;
                }
                else if ((mtcValue >= 332) && (mtcValue <= 334))
                {
                    mtcScore = 93;
                }
                else if ((mtcValue >= 335) && (mtcValue <= 337))
                {
                    mtcScore = 92;
                }
                else if ((mtcValue >= 338) && (mtcValue <= 340))
                {
                    mtcScore = 91;
                }
                else if ((mtcValue >= 341) && (mtcValue <= 343))
                {
                    mtcScore = 90;
                }
                else if ((mtcValue >= 344) && (mtcValue <= 346))
                {
                    mtcScore = 89;
                }
                else if ((mtcValue >= 347) && (mtcValue <= 349))
                {
                    mtcScore = 88;
                }
                else if ((mtcValue >= 350) && (mtcValue <= 352))
                {
                    mtcScore = 87;
                }
                else if ((mtcValue >= 353) && (mtcValue <= 355))
                {
                    mtcScore = 86;
                }
                else if ((mtcValue >= 356) && (mtcValue <= 358))
                {
                    mtcScore = 85;
                }
                else if ((mtcValue >= 359) && (mtcValue <= 402))
                {
                    mtcScore = 84;
                }
                else if ((mtcValue >= 403) && (mtcValue <= 405))
                {
                    mtcScore = 83;
                }
                else if ((mtcValue >= 406) && (mtcValue <= 408))
                {
                    mtcScore = 82;
                }
                else if ((mtcValue >= 409) && (mtcValue <= 411))
                {
                    mtcScore = 81;
                }
                else if ((mtcValue >= 412) && (mtcValue <= 414))
                {
                    mtcScore = 80;
                }
                else if ((mtcValue >= 415) && (mtcValue <= 417))
                {
                    mtcScore = 79;
                }
                else if ((mtcValue >= 418) && (mtcValue <= 420))
                {
                    mtcScore = 78;
                }
                else if ((mtcValue >= 421) && (mtcValue <= 423))
                {
                    mtcScore = 77;
                }
                else if ((mtcValue >= 424) && (mtcValue <= 426))
                {
                    mtcScore = 76;
                }
                else if ((mtcValue >= 427) && (mtcValue <= 429))
                {
                    mtcScore = 75;
                }
                else if ((mtcValue >= 430) && (mtcValue <= 433))
                {
                    mtcScore = 74;
                }
                else if ((mtcValue >= 434) && (mtcValue <= 436))
                {
                    mtcScore = 73;
                }
                else if ((mtcValue >= 437) && (mtcValue <= 439))
                {
                    mtcScore = 72;
                }
                else if ((mtcValue >= 440) && (mtcValue <= 442))
                {
                    mtcScore = 71;
                }
                else if ((mtcValue >= 443) && (mtcValue <= 445))
                {
                    mtcScore = 70;
                }
                else if ((mtcValue >= 446) && (mtcValue <= 448))
                {
                    mtcScore = 69;
                }
                else if ((mtcValue >= 449) && (mtcValue <= 451))
                {
                    mtcScore = 68;
                }
                else if ((mtcValue >= 452) && (mtcValue <= 454))
                {
                    mtcScore = 67;
                }
                else if ((mtcValue >= 455) && (mtcValue <= 457))
                {
                    mtcScore = 66;
                }
                else if ((mtcValue >= 458) && (mtcValue <= 500))
                {
                    mtcScore = 65;
                }
                else if ((mtcValue >= 501) && (mtcValue <= 503))
                {
                    mtcScore = 64;
                }
                else if ((mtcValue >= 504) && (mtcValue <= 506))
                {
                    mtcScore = 63;
                }
                else if ((mtcValue >= 507) && (mtcValue <= 509))
                {
                    mtcScore = 62;
                }
                else if ((mtcValue >= 510) && (mtcValue <= 512))
                {
                    mtcScore = 61;
                }
                else if (mtcValue == 513)
                {
                    mtcScore = 60;
                }
                else if (mtcValue >= 514)
                {
                    mtcScore = 0;
                }
                [mtc resignFirstResponder];
                
                //Calculate ammo can lift:
                if (amoValue >= 86)
                {
                    amoScore = 100;
                }
                else if ((amoValue == 85) || (amoValue == 84))
                {
                    amoScore = 99;
                }
                else if ((amoValue == 83) || (amoValue == 82))
                {
                    amoScore = 98;
                }
                else if ((amoValue == 81) || (amoValue == 80))
                {
                    amoScore = 97;
                }
                else if (amoValue == 79)
                {
                    amoScore = 96;
                }
                else if ((amoValue == 78) || (amoValue == 77))
                {
                    amoScore = 95;
                }
                else if ((amoValue == 76) || (amoValue == 75))
                {
                    amoScore = 94;
                }
                else if ((amoValue == 74) || (amoValue == 73))
                {
                    amoScore = 93;
                }
                else if (amoValue == 72)
                {
                    amoScore = 92;
                }
                else if ((amoValue == 71) || (amoValue == 70))
                {
                    amoScore = 91;
                }
                else if ((amoValue == 69) || (amoValue == 68))
                {
                    amoScore = 90;
                }
                else if ((amoValue == 67) || (amoValue == 66))
                {
                    amoScore = 89;
                }
                else if (amoValue == 65)
                {
                    amoScore = 88;
                }
                else if ((amoValue == 64) || (amoValue == 63))
                {
                    amoScore = 87;
                }
                else if ((amoValue == 62) || (amoValue == 61))
                {
                    amoScore = 86;
                }
                else if ((amoValue == 60) || (amoValue == 59))
                {
                    amoScore = 85;
                }
                else if (amoValue == 58)
                {
                    amoScore = 84;
                }
                else if ((amoValue == 57) || (amoValue == 56))
                {
                    amoScore = 83;
                }
                else if ((amoValue == 55) || (amoValue == 54))
                {
                    amoScore = 82;
                }
                else if ((amoValue == 53) || (amoValue == 52))
                {
                    amoScore = 81;
                }
                else if (amoValue == 51)
                {
                    amoScore = 80;
                }
                else if ((amoValue == 50) || (amoValue == 49))
                {
                    amoScore = 79;
                }
                else if ((amoValue == 48) || (amoValue == 47))
                {
                    amoScore = 78;
                }
                else if ((amoValue == 46) || (amoValue == 45))
                {
                    amoScore = 77;
                }
                else if (amoValue == 44)
                {
                    amoScore = 76;
                }
                else if ((amoValue == 43) || (amoValue == 42))
                {
                    amoScore = 75;
                }
                else if ((amoValue == 41) || (amoValue == 40))
                {
                    amoScore = 74;
                }
                else if ((amoValue == 39) || (amoValue == 38))
                {
                    amoScore = 73;
                }
                else if ((amoValue == 37) || (amoValue == 36))
                {
                    amoScore = 72;
                }
                else if (amoValue == 35)
                {
                    amoScore = 71;
                }
                else if ((amoValue == 34) || (amoValue == 33))
                {
                    amoScore = 70;
                }
                else if ((amoValue == 32) || (amoValue == 31))
                {
                    amoScore = 69;
                }
                else if ((amoValue == 30) || (amoValue == 29))
                {
                    amoScore = 68;
                }
                else if (amoValue == 28)
                {
                    amoScore = 67;
                }
                else if ((amoValue == 27) || (amoValue == 26))
                {
                    amoScore = 66;
                }
                else if ((amoValue == 25) || (amoValue == 24))
                {
                    amoScore = 65;
                }
                else if ((amoValue == 23) || (amoValue == 22))
                {
                    amoScore = 64;
                }
                else if (amoValue == 21)
                {
                    amoScore = 63;
                }
                else if ((amoValue == 20) || (amoValue == 19))
                {
                    amoScore = 62;
                }
                else if ((amoValue == 18) || (amoValue == 17))
                {
                    amoScore = 61;
                }
                else if (amoValue == 16)
                {
                    amoScore = 60;
                }
                else if (amoValue <= 15)
                {
                    amoScore = 0;
                }
                [amo resignFirstResponder];
                
                //Calculate MUF:
                if (mufValue <= 302)
                {
                    mufScore = 100;
                }
                else if ((mufValue >= 303) && (mufValue <= 306))
                {
                    mufScore = 99;
                }
                else if ((mufValue >= 307) && (mufValue <= 311))
                {
                    mufScore = 98;
                }
                else if ((mufValue >= 312) && (mufValue <= 316))
                {
                    mufScore = 97;
                }
                else if ((mufValue >= 317) && (mufValue <= 321))
                {
                    mufScore = 96;
                }
                else if ((mufValue >= 322) && (mufValue <= 326))
                {
                    mufScore = 95;
                }
                else if ((mufValue >= 327) && (mufValue <= 331))
                {
                    mufScore = 94;
                }
                else if ((mufValue >= 332) && (mufValue <= 336))
                {
                    mufScore = 93;
                }
                else if ((mufValue >= 337) && (mufValue <= 341))
                {
                    mufScore = 92;
                }
                else if ((mufValue >= 342) && (mufValue <= 346))
                {
                    mufScore = 91;
                }
                else if ((mufValue >= 347) && (mufValue <= 351))
                {
                    mufScore = 90;
                }
                else if ((mufValue >= 352) && (mufValue <= 355))
                {
                    mufScore = 89;
                }
                else if ((mufValue >= 356) && (mufValue <= 400))
                {
                    mufScore = 88;
                }
                else if ((mufValue >= 401) && (mufValue <= 405))
                {
                    mufScore = 87;
                }
                else if ((mufValue >= 406) && (mufValue <= 410))
                {
                    mufScore = 86;
                }
                else if ((mufValue >= 411) && (mufValue <= 415))
                {
                    mufScore = 85;
                }
                else if ((mufValue >= 416) && (mufValue <= 420))
                {
                    mufScore = 84;
                }
                else if ((mufValue >= 421) && (mufValue <= 425))
                {
                    mufScore = 83;
                }
                else if ((mufValue >= 426) && (mufValue <= 430))
                {
                    mufScore = 82;
                }
                else if ((mufValue >= 431) && (mufValue <= 435))
                {
                    mufScore = 81;
                }
                else if ((mufValue >= 436) && (mufValue <= 440))
                {
                    mufScore = 80;
                }
                else if ((mufValue >= 441) && (mufValue <= 445))
                {
                    mufScore = 79;
                }
                else if ((mufValue >= 446) && (mufValue <= 450))
                {
                    mufScore = 78;
                }
                else if ((mufValue >= 451) && (mufValue <= 455))
                {
                    mufScore = 77;
                }
                else if ((mufValue >= 456) && (mufValue <= 500))
                {
                    mufScore = 76;
                }
                else if ((mufValue >= 501) && (mufValue <= 505))
                {
                    mufScore = 75;
                }
                else if ((mufValue >= 506) && (mufValue <= 510))
                {
                    mufScore = 74;
                }
                else if ((mufValue >= 511) && (mufValue <= 515))
                {
                    mufScore = 73;
                }
                else if ((mufValue >= 516) && (mufValue <= 520))
                {
                    mufScore = 72;
                }
                else if ((mufValue >= 521) && (mufValue <= 525))
                {
                    mufScore = 71;
                }
                else if ((mufValue >= 526) && (mufValue <= 530))
                {
                    mufScore = 70;
                }
                else if ((mufValue >= 531) && (mufValue <= 534))
                {
                    mufScore = 69;
                }
                else if ((mufValue >= 535) && (mufValue <= 539))
                {
                    mufScore = 68;
                }
                else if ((mufValue >= 540) && (mufValue <= 544))
                {
                    mufScore = 67;
                }
                else if ((mufValue >= 545) && (mufValue <= 549))
                {
                    mufScore = 66;
                }
                else if ((mufValue >= 550) && (mufValue <= 554))
                {
                    mufScore = 65;
                }
                else if ((mufValue >= 555) && (mufValue <= 559))
                {
                    mufScore = 64;
                }
                else if ((mufValue >= 600) && (mufValue <= 604))
                {
                    mufScore = 63;
                }
                else if ((mufValue >= 605) && (mufValue <= 609))
                {
                    mufScore = 62;
                }
                else if ((mufValue >= 610) && (mufValue <= 614))
                {
                    mufScore = 61;
                }
                else if (mufValue == 615)
                {
                    mufScore = 60;
                }
                else if (mufValue >= 616)
                {
                    mufScore = 0;
                }
                [muf resignFirstResponder];
                
                cftScore = (mtcScore + amoScore + mufScore);
                NSString *cftScoreString = [NSString stringWithFormat:@"%ld", cftScore];
                score.text = cftScoreString;
                
                //Calculate 1st/2nd/3rd class:
                if (cftScore >= 270)
                {
                    cftclass.text = [NSString stringWithFormat:@"1st Class"];
                }
                else if ((cftScore >= 225) && (cftScore <= 269))
                {
                    cftclass.text = [NSString stringWithFormat:@"2nd Class"];
                }
                else if ((cftScore >= 190) && (cftScore <= 224))
                {
                    cftclass.text = [NSString stringWithFormat:@"3rd Class"];
                }
                else if (cftScore <= 189)
                {
                    cftclass.text = [NSString stringWithFormat:@"No Class"];
                }
                
                //Calculate Pass/Fail:
                if ((mtcScore >= 60) && (amoScore >= 60) && (mufScore >= 60))
                {
                    if (cftScore >= 190)
                    {
                        status.text = [NSString stringWithFormat:@"Pass"];
                    }
                    else
                    {
                        status.text = [NSString stringWithFormat:@"Fail"];
                    }
                }
                else if ((mtcScore <=59) || (amoScore <=59) || (mufScore <=59))
                {
                    status.text = [NSString stringWithFormat:@"Fail"];
                }
                
            }
            [age resignFirstResponder];
        }
    }
//    //If gender is Female:
//    else if (gender.selectedSegmentIndex == 1)
//    {
//        //If not at high altitude:
//        if (altitude.selectedSegmentIndex == 0)
//        {
//            
//        }
//        //if at high altitude:
//        else if (altitude.selectedSegmentIndex == 1)
//        {
//            
//        }
//    }
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
