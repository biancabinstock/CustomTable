//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Bianca Binstock on 2015-04-14.
//  Copyright (c) 2015 Bianca Binstock. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@implementation CustomTableViewController

{
    NSArray *recipeNames;
    NSArray *recipeImages;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",
                    @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut",
                    @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQPork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry BirdsCake", @"Ham and Cheese Panini"];
    
    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg",
                                     @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg",
                                     @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
                                     @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
                                     @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
                                     @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
                    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipeNames count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    return cell;
}
                    
@end
