//
//  ViewController.m
//  UITableViewController
//
//  Created by Sandeep Ankam on 8/3/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"
#import "Grocery.h"

static NSString * const cellIdentifier = @"MyCustomCell";

@implementation ViewController

@synthesize array;



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UINib *myCell = [UINib nibWithNibName:@"MyCustomTableViewCell" bundle:nil];
    
   

    [self.tableView registerNib:myCell forCellReuseIdentifier:cellIdentifier];
    
    
    //NSMutableArray *array1 = [[NSMutableArray alloc]init];
    self.array = [[NSMutableArray alloc]init];
    
    //initialize data
    Grocery *grocery = [[Grocery alloc]initWithRuns:@"18"
                                         strikerEnd:@"sachin"
                                          runnerEnd:@"ganguly"
                                             bowler:@"ishanth"
                                          matchName:@"IND vs PAK"
                                          oversLeft:@"4"];
    
    [self.array addObject:grocery];
    grocery = [[Grocery alloc]initWithRuns:@"18"
                                strikerEnd:@"dhoni"
                                 runnerEnd:@"yuvi"
                                    bowler:@"sreeshanth"
                                    matchName:@"AUS vs IND"
                                 oversLeft:@"6"];
    
    [self.array addObject:grocery];
    
    //retrieve data
    Grocery *gotGrocery = [array objectAtIndex:0];
    NSLog(@"%@",gotGrocery.matchName);
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCustomTableViewCell *cell = nil;
    
        
        cell = (MyCustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        Grocery *gotGrocery = [array objectAtIndex:indexPath.row];

    cell.matchLabel.text = gotGrocery.matchName;
    cell.runsLabel.text = gotGrocery.runs;
   
    cell.runnerEndLabel.text = gotGrocery.runnerEnd;
    
    cell.strikerEndLabel.text = gotGrocery.strikerEnd;
    cell.bowlerLabel.text = gotGrocery.bowler;
    cell.oversLeftLabel.text = gotGrocery.oversLeft;
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    

        [self performSegueWithIdentifier:@"firstSegue" sender:self];
   
    

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
            return 120.0f;
    
    
}


@end
