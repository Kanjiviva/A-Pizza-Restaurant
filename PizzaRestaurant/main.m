//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            
            PizzaSize size = Small;
            Pizza *pizza;

            if ([commandWords count] > 1) {
                if ([commandWords[0] isEqualToString:@"Medium"]) {
                    size = Medium;
                } else {
                    size = Large;
                }
            
                pizza = [[Pizza alloc] initWithSize:size toppings:[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)]];
            } else if ([commandWords count] == 1){
            
                if ([commandWords[0] isEqualToString:@"Small"] || [commandWords[0] isEqualToString:@"Medium"] || [commandWords[0] isEqualToString:@"Large"]) {
                    if ([commandWords[0] isEqualToString:@"Medium"]) {
                        size = Medium;
                    } else {
                        size = Large;
                    }
                    
                    [[pizza class] meatLoversWithSize:size];
                    NSLog(@"meat lover");
                }else {
                    [[pizza class] largePepperoni];
                    NSLog(@"pepperoni");
                }
            }
            
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

