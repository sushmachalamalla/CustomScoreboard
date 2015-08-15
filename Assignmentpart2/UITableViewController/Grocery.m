//
//  Grocery.m
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "Grocery.h"

@implementation Grocery

@synthesize runs;
@synthesize strikerEnd;
@synthesize runnerEnd;
@synthesize bowler;
@synthesize matchName;
@synthesize oversLeft;

-(id)initWithRuns:(NSString *)runs_
       strikerEnd:(NSString *)strikerEnd_
        runnerEnd:(NSString *)runnerEnd_
           bowler:(NSString *)bowler_
        matchName:(NSString *)matchName_
        oversLeft:(NSString *)oversLeft_{


    self = [super init];
    if (self) {
        self.runs = runs_;
        self.strikerEnd = strikerEnd_;
        self.runnerEnd = runnerEnd_;
        self.bowler = bowler_;
        self.matchName = matchName_;
        self.oversLeft = oversLeft_;
    }
    return self;
}

@end
