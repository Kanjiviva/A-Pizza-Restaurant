//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject 

@property (strong, nonatomic) NSMutableArray *deliveredPizzaList;

-(void)deliverPizza:(Pizza *)pizza;

@end
