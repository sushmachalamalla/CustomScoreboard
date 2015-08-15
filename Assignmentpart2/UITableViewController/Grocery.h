//
//  Grocery.h
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grocery : NSObject
@property (nonatomic, strong) NSString *runs;
@property (nonatomic, strong) NSString *strikerEnd;
@property (nonatomic, strong) NSString *runnerEnd;
@property (nonatomic, strong) NSString *bowler;
@property (nonatomic, strong) NSString *matchName;
@property (nonatomic, strong) NSString *oversLeft;
@property (nonatomic, strong) NSString *partnership;
@property (nonatomic, strong) NSString *strikerRate;
@property (nonatomic, strong) NSString *runnerRate;
@property (nonatomic, strong) NSString *speed;
@property (nonatomic, strong) NSData *imageTop1;
@property (nonatomic, strong) NSData *imageTop2;
@property (nonatomic, strong) NSData *imageBottom1;
@property (nonatomic, strong) NSData *imageBottom2;

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
     imageBottom2:(NSData *)imageBottom2_;


@end
