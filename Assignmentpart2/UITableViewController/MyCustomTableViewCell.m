//
//  MyCustomTableViewCell.m
//  UITableViewController
//

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
