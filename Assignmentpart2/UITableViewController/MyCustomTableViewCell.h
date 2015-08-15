//
//  MyCustomTableViewCell.h
//  UITableViewController
//

//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *matchLabel;


@property (strong, nonatomic) IBOutlet UILabel *runsLabel;

@property (strong, nonatomic) IBOutlet UILabel *strikerEndLabel;

@property (strong, nonatomic) IBOutlet UILabel *runnerEndLabel;

@property (strong, nonatomic) IBOutlet UILabel *bowlerLabel;


@property (strong, nonatomic) IBOutlet UILabel *oversLeftLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageTop1;
@property (strong, nonatomic) IBOutlet UIImageView *imageTop2;
@property (strong, nonatomic) IBOutlet UIImageView *imageBottom1;
@property (strong, nonatomic) IBOutlet UIImageView *imageBottom2;


@end
