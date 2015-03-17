//
//  SnortingMethods.m
//  SizzortingRizzayz
//
//  Created by Jeffrey C Rosenthal on 3/17/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "SnortingMethods.h"

@implementation SnortingMethods

+(NSArray *)alphaSnort:(NSArray *)ray{
   NSArray *sortedArray =  [ray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
            if ([[obj1 substringToIndex:1] isGreaterThan:[obj2 substringToIndex:1]]){
                return (NSComparisonResult)NSOrderedDescending;
            }
            else if ([[obj2 substringToIndex:1] isGreaterThan:[obj1 substringToIndex:1]]){
                return (NSComparisonResult)NSOrderedAscending;
            }
        return (NSComparisonResult)NSOrderedSame;

    }];
    return sortedArray;
}



+(NSArray *)lastAlphaSnort:(NSArray *)ray{
    NSArray *sortedArray =  [ray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        if ([[obj1 substringFromIndex:([obj1 length]-1)] isGreaterThan:[obj2 substringFromIndex:([obj2 length])]]-1){
            return (NSComparisonResult)NSOrderedAscending;
        }
        else if ([[obj2 substringFromIndex:([obj2 length]-1)] isGreaterThan:[obj1 substringFromIndex:([obj1 length]-1)]]){
            return (NSComparisonResult)NSOrderedDescending;
        }
        return (NSComparisonResult)NSOrderedSame;
        
    }];
    return sortedArray;
}


+(NSArray *)lengthSnort:(NSArray *)ray{
    NSArray *sortedArray = [ray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if ([obj1 length] > [obj2 length]){
            return (NSComparisonResult)NSOrderedDescending;
        }
        else if ([obj1 length] > [obj2 length]){
            return (NSComparisonResult)NSOrderedAscending;
        }
        return (NSComparisonResult)NSOrderedSame;
    }];
    return sortedArray;
}
+(NSArray *)eSnort:(NSArray *)ray{
NSArray *sortedArray = [ray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
    int countOne = 0;
    int countTwo = 0;
    for (int i = 0; i<[obj1 length]; i++) {
        NSString *findC = [NSString stringWithFormat:@"%c",[obj1 characterAtIndex:i]];
        if ([findC isEqualTo:@"e"]){
            countOne++;
        }
    }
    for (int i = 0; i<[obj2 length]; i++) {
        NSString *findCtwo = [NSString stringWithFormat:@"%c",[obj2 characterAtIndex:i]];
        if ([findCtwo isEqualTo:@"e"]){
            countTwo++;
        }
    }
    if (countOne > countTwo){
        return (NSComparisonResult)NSOrderedDescending;
    }
    else if (countTwo > countOne){
        return (NSComparisonResult)NSOrderedAscending;
    }
    return (NSComparisonResult)NSOrderedSame;
}];
    return sortedArray;
}
@end
