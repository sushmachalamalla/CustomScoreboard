//
//  CustomMatchDetailViewController.m
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.

//

#import "CustomMatchDetailViewController.h"



@implementation CustomMatchDetailViewController
@synthesize detailMatch;

@synthesize detailRunsLabel;
@synthesize detailOverLeftLabel;
@synthesize detailPartnershipLabel;
@synthesize detailStrikerEndLabel;
@synthesize detailStrikeRateLabel;
@synthesize detailRunnerEndLabel;
@synthesize detailRunnerStrikeRate;
@synthesize detailBowlerLabel;
@synthesize detailSpeedLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    detailRunsLabel.text = detailMatch.runs;
    detailOverLeftLabel.text = detailMatch.oversLeft;
    detailPartnershipLabel.text = detailMatch.partnership;
    detailStrikerEndLabel.text = detailMatch.strikerEnd;
    detailStrikeRateLabel.text = detailMatch.strikerRate;
    detailRunnerEndLabel.text = detailMatch.runnerEnd;
    detailRunnerStrikeRate.text = detailMatch.runnerRate;
    detailBowlerLabel.text = detailMatch.bowler;
    detailSpeedLabel.text = detailMatch.speed;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
