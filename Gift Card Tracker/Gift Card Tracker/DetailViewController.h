//
//  DetailViewController.h
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/1/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
