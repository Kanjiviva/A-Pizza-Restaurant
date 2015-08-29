//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService ()

@property (strong, nonatomic) DeliveryCar *car;

@end


@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.deliveredPizzaList = [[NSMutableArray alloc] init];
        self.car = [[DeliveryCar alloc] init];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    [self.deliveredPizzaList addObject:pizza];
    
    [self.car deliverPizza:pizza];
    
}

- (NSMutableArray *)numberOfPizzaDelivered {
    
    
    return self.deliveredPizzaList;
}

@end
