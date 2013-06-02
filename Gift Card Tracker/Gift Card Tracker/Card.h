//
//  Card.h
//  Gift Card Tracker
//
//  Created by Benjamin King on 6/2/13.
//  Copyright (c) 2013 Benjamin King. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, copy) NSString *cardTitle;
@property (nonatomic, copy) NSString *cardAmountLeft;
@property (nonatomic, copy) NSString *cardExpiration;
@property (nonatomic, copy) UIImage *cardSmallImage;
@property (nonatomic, copy) UIImage *cardLargeImage;







@end
