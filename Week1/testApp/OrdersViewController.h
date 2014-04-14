//
//  OrdersViewController.h
//  testApp
//
//  Created by Kevin O'Toole on 4/9/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrdersCustomCell.h"

@interface OrdersViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    //Orders Array
    NSMutableArray *ordersArray;

}

@property (strong, nonatomic)IBOutlet UITableView *ordersTableView;

@property (strong, nonatomic)NSMutableArray *ordersArray;

@property (strong, nonatomic)OrdersCustomCell *customCell;

@end
