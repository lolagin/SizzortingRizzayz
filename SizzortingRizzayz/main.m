//
//  main.m
//  SizzortingRizzayz
//
//  Created by Jeffrey C Rosenthal on 3/17/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnortingMethods.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *shizToSnort =@[
        @"eeeeeAAbfdf",
        @"Everything",
        @"news to me",
        @"timepiece",
        @"egg",
        @"eggs",
        @"paper",
        @"e",
        @"facebook",
        @"painting",
        @"231 thurlow st",
        @"99 bottles"];
//        for letter in word do compare.
//        if 5 letter word and 7 letter word, compare SHORT COUNT and put SHORT first

        

//        NSArray *newRay = [SnortingMethods alphaSnort:shizToSnort];
//        NSArray *newRay = [SnortingMethods lastAlphaSnort:shizToSnort];
//        NSArray *newRay = [SnortingMethods lengthSnort:shizToSnort];
        NSArray *newRay = [SnortingMethods eSnort:shizToSnort];
        NSLog(@"%@",newRay);
        
        
        
    }
    return 0;
}
