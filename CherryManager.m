//
//  CherryManager.m
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "CherryManager.h"

@implementation CherryManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    NSLog(@"We always upgrade your pizza!");
    return YES;
}

@end
