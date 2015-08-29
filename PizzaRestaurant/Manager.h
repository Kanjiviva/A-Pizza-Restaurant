//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Steve on 2015-08-28.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface Manager : NSObject <KitchenDelegate>

@property (strong, nonatomic) DeliveryService *deliveryService;

@end
