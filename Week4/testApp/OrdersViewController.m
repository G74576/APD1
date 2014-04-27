//
//  OrdersViewController.m
//  testApp
//
//  Created by Kevin O'Toole on 4/9/14.
//  Copyright (c) 2014 Kevin O'Toole. All rights reserved.
//

#import "OrdersViewController.h"
#import "OrdersCustomCell.h"
#import "OrdersInfo.h"

@interface OrdersViewController ()

@end

@implementation OrdersViewController
@synthesize ordersArray, ordersTableView;

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
    
    //General Orders Array
    ordersArray = [[NSMutableArray alloc]init];
    
    OrdersInfo *ord01 = [[OrdersInfo alloc]initWithTitle:@"First General Order" oDetail:@"To take charge of this post and all government property in view."];
    OrdersInfo *ord02 = [[OrdersInfo alloc]initWithTitle:@"Second General Order" oDetail:@"To walk my post in a military manner keeping always on the alert and observing everything that takes place within sight or hearing."];
    OrdersInfo *ord03 = [[OrdersInfo alloc]initWithTitle:@"Third General Order" oDetail:@"To report all violations of orders I am instructed to enforce."];
    OrdersInfo *ord04 = [[OrdersInfo alloc]initWithTitle:@"Fourth General Order" oDetail:@"To repeat all calls from post more distant from the guardhouse than my own."];
    OrdersInfo *ord05 = [[OrdersInfo alloc]initWithTitle:@"Fith General Order" oDetail:@"To quit my post only when properly relieved."];
    OrdersInfo *ord06 = [[OrdersInfo alloc]initWithTitle:@"Sixth General Order" oDetail:@"To receive, obey and pass on to the sentry who relieves me, all orders from the Commanding Officer, Officer of the Day, Officers and Non-Commissioned Officers of the guard only."];
    OrdersInfo *ord07 = [[OrdersInfo alloc]initWithTitle:@"Seventh General Order" oDetail:@"To talk to no one except in the line of duty."];
    OrdersInfo *ord08 = [[OrdersInfo alloc]initWithTitle:@"Eighth General Order" oDetail:@"To give the alarm in case of fire or disorder."];
    OrdersInfo *ord09 = [[OrdersInfo alloc]initWithTitle:@"Ninth General Order" oDetail:@"To call the Corporal of the Guard in any case not covered by instructions."];
    OrdersInfo *ord10 = [[OrdersInfo alloc]initWithTitle:@"Tenth General Order" oDetail:@"To salute all officers, colors and standards not cased."];
    OrdersInfo *ord11 = [[OrdersInfo alloc]initWithTitle:@"Eleventh General Order" oDetail:@"To be especially watchful at night, and during the time for challenging, to challenge all persons or or near my post and to allow no one to pass without proper authority."];
    
    [ordersArray addObject:ord01];
    [ordersArray addObject:ord02];
    [ordersArray addObject:ord03];
    [ordersArray addObject:ord04];
    [ordersArray addObject:ord05];
    [ordersArray addObject:ord06];
    [ordersArray addObject:ord07];
    [ordersArray addObject:ord08];
    [ordersArray addObject:ord09];
    [ordersArray addObject:ord10];
    [ordersArray addObject:ord11];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ordersArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    OrdersCustomCell *cell = (OrdersCustomCell *) [ordersTableView dequeueReusableCellWithIdentifier:@"OrdersCell"];
    
    if (cell != nil)
    {
        OrdersInfo *ordersInfo = [ordersArray objectAtIndex:indexPath.row];
        
        cell.orderLabel.text = ordersInfo.orderNumber;
        cell.orderFullLabel.text = ordersInfo.orderDetail;
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!self.customCell)
    {
        self.customCell = [ordersTableView dequeueReusableCellWithIdentifier:@"OrdersCell"];

    }
    
    //Configure the cell
    OrdersInfo *ordersInfo = [ordersArray objectAtIndex:indexPath.row];
    self.customCell.orderLabel.text = ordersInfo.orderNumber;
    self.customCell.orderFullLabel.text = ordersInfo.orderDetail;
    
    //Layout the cell
    [self.customCell layoutIfNeeded];
    
    //Get the height of the cell
    CGFloat height = [self.customCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    //Padding of 1 point (cell sepeartor
    return height +1;
}

//When a lot of content this will speed up the calculation process
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
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
