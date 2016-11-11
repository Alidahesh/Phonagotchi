//
//  Pet.m
//  Phonagotchi
//
//  Created by Ali Dahesh on 2016-11-10.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pet.h"

@interface Pet ()

@property (nonatomic) BOOL grumpy;

@end

@implementation Pet



- (instancetype)initPet{
    
    self = [super init];
    if (self) {
        _grumpy = NO;
        
    }
    return self;
}

-(void) petVelocity :(CGPoint) speed {
    
    NSLog(@"%@", NSStringFromCGPoint(speed));
    
    if ( speed.x > 100  ){
        self.grumpy = YES;
    } else {
            self.grumpy = NO;
        }
    }


    @end
