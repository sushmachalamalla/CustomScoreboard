//
//  ViewController.h
//  UITableViewController
//


//

#import <UIKit/UIKit.h>
#import "Grocery.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *array;


@end

