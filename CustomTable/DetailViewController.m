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

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    Set the Label / recipe text with the selected recipe /and recipe time
    self.recipeLabel.text = self.recipeName;
    self.recipeTimeLabel.text = self.recipeTime;
    
    // Do any additional setup after loading the view.
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
