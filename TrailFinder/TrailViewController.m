 //
//  ViewController.m
//  TrailFinder
//
//  Created by jonathan thornburg on 7/14/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import "TrailViewController.h"
#import "TrailController.h"
#import "DetailViewController.h"

@interface TrailViewController ()<UITableViewDataSource,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) TrailController *trailController;
@property (strong, nonatomic) NSArray *trails;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TrailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.trailController = [TrailController new];
//    [self.trailController trailByCity:self.textField.text completion:^(NSArray *trails) {
//        self.trails = trails;
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self.tableView reloadData];
//        });
//    }];
}

-(void)loadTrials:(NSString *)string{
    
    self.trailController = [TrailController new];
    [self.trailController trailByCity:string completion:^(NSArray *trails) {
        self.trails = trails;
    
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    
    }];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
  
    [self loadTrials:textField.text];
    [self.textField resignFirstResponder];
    return YES;
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.trails.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"trailCell"];
    Trail *trail = self.trails[indexPath.row];
    
    cell.textLabel.text = trail.name;
    if (trail.state == (id)[NSNull null]) {
        cell.detailTextLabel.text = @"N/A";
    }else
        cell.detailTextLabel.text = trail.state;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *viewController = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForCell:sender];
    
    Trail *trail = self.trails[path.row];
    viewController.trail = trail;
    
}



@end
