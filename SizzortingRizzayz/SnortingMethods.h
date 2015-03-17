//
//  SnortingMethods.h
//  SizzortingRizzayz
//
//  Created by Jeffrey C Rosenthal on 3/17/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SnortingMethods : NSObject


+(NSArray *)alphaSnort:(NSArray *)ray;
+(NSArray *)lengthSnort:(NSArray *)ray;
+(NSArray *)lastAlphaSnort:(NSArray *)ray;
+(NSArray *)eSnort:(NSArray *)ray;



@end
