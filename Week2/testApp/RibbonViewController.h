//
//  RibbonViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/7/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RibbonViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *ribbonsArray;
}

//TableView
@property (strong, nonatomic)IBOutlet UITableView *ribbonTableView;

//Ribbons Array
@property (strong, nonatomic)NSMutableArray *ribbonsArray;

@end
