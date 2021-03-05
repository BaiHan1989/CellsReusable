//
//  ViewController.m
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import "ViewController.h"
#import "TestCell.h"
#import "TestCell+Extension.h"
#import "TestTableViewController.h"
#import "TestViewModel.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *persons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"TestCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    self.persons = [TestViewModel getPersonModel];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _persons.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    [cell setContent:_persons[indexPath.row]];
//    [cell setModel:_persons[indexPath.row]];
    [cell setViewModel:self.persons[indexPath.row]];
//    cell.model = _persons[indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TestTableViewController *vc = [[TestTableViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
