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
    NSMutableArray *recipeNames;
    NSArray *recipeImages;
    NSArray *recipeTimes;
    BOOL recipeChecked[16];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    recipeNames = [dict objectForKey:@"Name"];
    recipeImages = [dict objectForKey:@"Image"];
    recipeTimes = [dict objectForKey:@"PrepTime"];
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
    cell.prepTimeLabel.text = [recipeTimes objectAtIndex:indexPath.row];
    if (recipeChecked[indexPath.row]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath
                                                                    *)indexPath


{
    NSString* selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:selectedRecipe
                                 delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    // Display Alert Message
    [messageAlert show];
    
//    Ading checkmark
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
//    toggling checkmark
    if (recipeChecked[indexPath.row]) {
        recipeChecked [indexPath.row] = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
    } else {
        recipeChecked [indexPath.row] = YES;
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
   
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:
(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // Remove the row from data model
    [recipeNames removeObjectAtIndex:indexPath.row];
    // Request table view to reload
    [tableView reloadData];
}


@end
