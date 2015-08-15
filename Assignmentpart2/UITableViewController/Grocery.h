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

-(id)initWithRuns:(NSString *)runs_
             strikerEnd:(NSString *)strikerEnd_
            runnerEnd:(NSString *)runnerEnd_
           bowler:(NSString *)bowler_
        matchName:(NSString *)matchName_
            oversLeft:(NSString *)oversLeft_;

@end
