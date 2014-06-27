//
//  CRViewController.m
//  ShowsAndMovies
//
//  Created by Carlos Roig Salvador on 27/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *showsAndMovies;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark -
#pragma mark - TableView Delegate Methods

#pragma mark - TableView DataSource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.showsAndMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:NSStringFromClass([UITableViewCell class])];
    }
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

@end
