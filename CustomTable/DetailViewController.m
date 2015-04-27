//
//  DetailViewController.m
//  CustomTable
//
//  Created by Bianca Binstock on 2015-04-20.
//  Copyright (c) 2015 Bianca Binstock. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    sets title of nav bar as name of recipe
    self.title = self.recipe.name;
//    configures prep time label and set the recipe image
    self.prepTimeLabel.text = self.recipe.prepTime;
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.image];
    NSMutableString *ingredientsText = [NSMutableString string];
    for (NSString* ingredient in self.recipe.ingredients) {
        [ingredientsText appendFormat:@"%@\n", ingredient];
    }
        self.ingredientsTextView.text = ingredientsText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
