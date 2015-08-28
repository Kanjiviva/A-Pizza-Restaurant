//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, PizzaSize){
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property (assign, nonatomic) PizzaSize pizzaSize;
@property (assign, nonatomic) NSArray *toppings;

- (instancetype)initWithSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings;

+(Pizza *)largePepperoni;
+(Pizza *)meatLoversWithSize:(PizzaSize)size;

@end
