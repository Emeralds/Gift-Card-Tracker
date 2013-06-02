//
//  MasterViewController.h
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/1/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Card;
@interface MasterViewController : UITableViewController<UITableViewDelegate>

@property (nonatomic, strong) NSArray *dataRows;




@property (nonatomic, retain) UITextField *cardTitleField;
@property (nonatomic, retain) UITextField *cardAmountLeftField;
@property (nonatomic, retain) UITextField *cardExpirationField;
@property (nonatomic, retain) UIImage *cardSmallImage;
@property (nonatomic, retain) Card *selectedCard;

- (void)newCardButtonPressed:(id)sender;


@end
