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
    return 0;
    //composition a button using the base class
    Button *b = [[Button alloc]init];
    b.shape = c;
}
