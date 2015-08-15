//
//  ViewController.m
//  UITableViewController
//

//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"
#import "Grocery.h"
#import "CustomMatchDetailViewController.h"

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
                                         strikerEnd:@"Sachin"
                                          runnerEnd:@"Sehwag"
                                             bowler:@"Aktar"
                                          matchName:@"IND vs PAK"
                                          oversLeft:@"4"
                                        partnership:@"200"
                                        strikerRate:@"34"
                                          runnerRate:@"43"
                                              speed:@"47"
                                         imageTop1:UIImageJPEGRepresentation([UIImage imageNamed:@"india"], 0.0)
                                imageTop2:UIImageJPEGRepresentation([UIImage imageNamed:@"pak"], 0.0)
                                imageBottom1:UIImageJPEGRepresentation([UIImage imageNamed:@"bat"], 0.0)
                                imageBottom2:UIImageJPEGRepresentation([UIImage imageNamed:@"ball"], 0.0)];
    
    [self.array addObject:grocery];
    grocery = [[Grocery alloc]initWithRuns:@"18"
                                strikerEnd:@"Afridi"
                                 runnerEnd:@"Khan"
                                    bowler:@"Ishanth"
                                    matchName:@"PAK vs IND"
                                 oversLeft:@"6"
                               partnership:@"100"
                               strikerRate:@"34"
                                runnerRate:@"43"
                                     speed:@"47"
     imageTop1:UIImageJPEGRepresentation([UIImage imageNamed:@"pak"], 0.0)
     imageTop2:UIImageJPEGRepresentation([UIImage imageNamed:@"india"], 0.0)
     imageBottom1:UIImageJPEGRepresentation([UIImage imageNamed:@"bat"], 0.0)
     imageBottom2:UIImageJPEGRepresentation([UIImage imageNamed:@"ball"], 0.0)];
    
    [self.array addObject:grocery];
    
    grocery = [[Grocery alloc]initWithRuns:@"18"
                                strikerEnd:@"Ishanth"
                                 runnerEnd:@"Sehwag"
                                    bowler:@"Smith"
                                 matchName:@"IND vs AUS"
                                 oversLeft:@"6"
                               partnership:@"160"
                               strikerRate:@"34"
                                runnerRate:@"43"
                                     speed:@"47"
                                 imageTop1:UIImageJPEGRepresentation([UIImage imageNamed:@"india"], 0.0)
                                 imageTop2:UIImageJPEGRepresentation([UIImage imageNamed:@"aus"], 0.0)
                              imageBottom1:UIImageJPEGRepresentation([UIImage imageNamed:@"bat"], 0.0)
                              imageBottom2:UIImageJPEGRepresentation([UIImage imageNamed:@"ball"], 0.0)];
    
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
    cell.imageTop1.image = [UIImage imageWithData:gotGrocery.imageTop1];
    cell.imageBottom1.image = [UIImage imageWithData:gotGrocery.imageBottom1];
    cell.imageTop2.image = [UIImage imageWithData:gotGrocery.imageTop2];
    cell.imageBottom2.image = [UIImage imageWithData:gotGrocery.imageBottom2];
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    

        [self performSegueWithIdentifier:@"MatchDetailSegue" sender:self];
    
    
   
    

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Grocery *tempGrocery = [array objectAtIndex:indexPath.row];
    CustomMatchDetailViewController *destinationViewController = segue.destinationViewController;
    destinationViewController.detailMatch = tempGrocery;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
            return 120.0f;
    
    
}


@end
