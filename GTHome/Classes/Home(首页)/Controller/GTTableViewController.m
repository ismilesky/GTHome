//
//  GTTableViewController.m
//  GTPageController
//
//

#import "GTTableViewController.h"
#import "GTLoopView.h"
#import "GTHeader.h"
#import "GTPageController.h"
#import "GTShowCell.h"
@interface GTTableViewController () <GTLoopViewDelegate, GTShowCellDelegate>

@end
@implementation GTTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@ viewDidLoad",[self class]);
    self.tableView.showsVerticalScrollIndicator = NO;
    NSArray *images = @[@"h1.jpg",@"h2.jpg",@"h3.jpg"];
    GTLoopView *loopView = [[GTLoopView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width/1.8) images:images autoPlay:YES delay:2.0];
    loopView.delegate = self;
    self.tableView.tableHeaderView = loopView;
    self.tableView.rowHeight = 80;
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GTShowCell *cell = [GTShowCell showCellWithTableView:tableView];
    cell.delegate = self;
    // 数据传值....
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 244;
}


#pragma mark - Methods of GTShowCellDelegate

- (void)attentionButton:(GTShowCell *)showCell button:(UIButton *)button
{
    // 进行相关界面的跳转/操作
    NSLog(@"关注成功！");
}

@end
