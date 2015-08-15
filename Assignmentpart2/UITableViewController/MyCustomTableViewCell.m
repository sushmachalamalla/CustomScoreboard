//
//  MyCustomTableViewCell.m
//  UITableViewController
//
//  Created by Sandeep Ankam on 8/4/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@implementation MyCustomTableViewCell

- (IBAction)switch:(id)sender {

    UISwitch *mySwitch = (UISwitch *)sender;
    if([self.reuseIdentifier isEqualToString:@"MyCustomCell"]) {
        
      if(mySwitch.isOn)
      {
        self.backgroundColor = [UIColor greenColor];
      }
      else {
          self.backgroundColor = [UIColor redColor];
      }
    } else {
        if(mySwitch.isOn)
        {
            self.backgroundColor = [UIColor blueColor];
        }
        else {
            self.backgroundColor = [UIColor yellowColor];
        }
    }
}

@end
