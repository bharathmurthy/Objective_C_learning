//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//
#import "Shape.h"
#import "Circle.h"
#import <Cocoa/Cocoa.h>
#import "Button.h"
int main()
{
    Shape *s = [[Shape alloc]init ];
    NSLog(@"shape area %f",[s area]);
    
    Circle *c = [[Circle alloc] init];
    c.radius = 5;
    NSLog(@"shape area %f",[c area]);

    //composition a button using the base class
    Button *b = [[Button alloc]init];
    b.shape = c;
    
    //little about NSNUmber its like a wrapper class for all the rudimentary data types
    
    NSNumber *someNumber;
    someNumber = @34;
    NSLog(@"some number is %@",someNumber);
    
    someNumber = @3.14567878;
    NSLog(@"some number now is %@",someNumber);
    
    //now a little about NSString and some of its useful methods
    NSString *someString = @"nothing";
    NSLog(@"some string is %@",someString);
    someString = [someString stringByAppendingString:@" what the fuck is this string"];
    NSLog(@"some string is %@",someString);
    
    //little about NSArray
    NSArray *drinks = @[@"juice", @"water", @"coffee"];
    for(NSString *string in drinks)
    {
        NSLog(@"%@",string);
    }
    
    //now about NSDictionary and NSMutableDictionary
    NSDictionary *album = @{@"title":@"Abbey Road",@"artist":@"The Beatles"};
    
    NSMutableDictionary *albumMutable = [NSMutableDictionary dictionaryWithDictionary:album];
    [albumMutable setObject:@"1969" forKey:@"year"];
        return 0;
}
