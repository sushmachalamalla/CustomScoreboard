//
//  CustomMatchDetailViewController.h
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Grocery.h"

@interface CustomMatchDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *detailRunsLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailOverLeftLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailPartnershipLabel;

@property (strong, nonatomic) IBOutlet UILabel *detailStrikerEndLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailStrikeRateLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailRunnerEndLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailRunnerStrikeRate;
@property (strong, nonatomic) IBOutlet UILabel *detailBowlerLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailSpeedLabel;
@property (nonatomic,strong) Grocery *detailMatch;

@end
