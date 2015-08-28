//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@interface Pizza()



@end



@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        
        _toppings = toppings;
        _pizzaSize = pizzaSize;
        
        
    }
    return self;
}

+(Pizza *)largePepperoni {
    Pizza *pepperoni = [[Pizza alloc] initWithSize:Large toppings:@[@"pepperoni"]];
    
    return pepperoni;
    
}

+(Pizza *)meatLoversWithSize:(PizzaSize)size {
    
    Pizza *meatLover = [[Pizza alloc] initWithSize:size toppings:@[@"meatLover"]];
    
    return meatLover;
}


@end
