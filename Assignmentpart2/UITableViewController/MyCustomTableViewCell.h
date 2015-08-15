//
//  MyCustomTableViewCell.h
//  UITableViewController
//
//  Created by Sandeep Ankam on 8/4/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *matchLabel;


@property (strong, nonatomic) IBOutlet UILabel *runsLabel;

@property (strong, nonatomic) IBOutlet UILabel *strikerEndLabel;

@property (strong, nonatomic) IBOutlet UILabel *runnerEndLabel;

@property (strong, nonatomic) IBOutlet UILabel *bowlerLabel;


@property (strong, nonatomic) IBOutlet UILabel *oversLeftLabel;

@end
