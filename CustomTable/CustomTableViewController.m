//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Bianca Binstock on 2015-04-14.
//  Copyright (c) 2015 Bianca Binstock. All rights reserved.
//

#import "CustomTableViewController.h"

@implementation CustomTableViewController

{
    NSArray *recipeNames;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",
                    @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut",
                    @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQPork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipeNames count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    return cell;
}
                    
@end
