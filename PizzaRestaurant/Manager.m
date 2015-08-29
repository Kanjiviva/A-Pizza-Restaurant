//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]){
        return NO;
    }

    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    [self.deliveryService deliverPizza:pizza];
}

@end
