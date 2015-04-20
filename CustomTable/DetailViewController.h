//
//  DetailViewController.h
//  CustomTable
//
//  Created by Bianca Binstock on 2015-04-20.
//  Copyright (c) 2015 Bianca Binstock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;
@property (nonatomic, strong) IBOutlet UILabel *recipeTimeLabel;
@property (nonatomic, strong) NSString *recipeTime;

@end
