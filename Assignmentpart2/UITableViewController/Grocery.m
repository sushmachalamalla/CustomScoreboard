//
//  Grocery.m
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.

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
        oversLeft:(NSString *)oversLeft_
      partnership:(NSString *)partnership_
      strikerRate:(NSString *)strikerRate_
       runnerRate:(NSString *)runnerRate_
            speed:(NSString *)speed_
            imageTop1:(NSData *)imageTop1_
        imageTop2:(NSData *)imageTop2_
     imageBottom1:(NSData *)imageBottom1_
     imageBottom2:(NSData *)imageBottom2_{



    self = [super init];
    if (self) {
        self.runs = runs_;
        self.strikerEnd = strikerEnd_;
        self.runnerEnd = runnerEnd_;
        self.bowler = bowler_;
        self.matchName = matchName_;
        self.oversLeft = oversLeft_;
        self.partnership = partnership_;
        self.strikerRate = strikerRate_;
        self.runnerRate = runnerRate_;
        self.speed = speed_;
        self.imageTop1 = imageTop1_;
        self.imageTop2 = imageTop2_;
        self.imageBottom1 =imageBottom1_;
        self.imageBottom2 = imageBottom2_;
    }
    return self;
}

@end
