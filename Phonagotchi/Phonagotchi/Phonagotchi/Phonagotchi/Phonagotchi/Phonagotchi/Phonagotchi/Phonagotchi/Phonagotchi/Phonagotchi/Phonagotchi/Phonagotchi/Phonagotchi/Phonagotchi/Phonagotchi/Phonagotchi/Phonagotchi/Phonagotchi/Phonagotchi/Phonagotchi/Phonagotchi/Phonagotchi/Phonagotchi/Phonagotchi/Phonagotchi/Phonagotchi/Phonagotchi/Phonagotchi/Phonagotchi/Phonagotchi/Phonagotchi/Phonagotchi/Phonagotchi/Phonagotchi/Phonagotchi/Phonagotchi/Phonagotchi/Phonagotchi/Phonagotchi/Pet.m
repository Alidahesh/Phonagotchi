//
//  Pet.m
//  Phonagotchi
//
//  Created by Ali Dahesh on 2016-11-10.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pet.h"


@implementation Pet;

@property (nonatomic, strong) grumpy;


- (instancetype)initPet{
    
    self = [super init];
    if (self) {
        _grumpy = NO;
        
    }
    return self;

-(void) petVelocity :(CGPoint) speed {
        
        if speed.x > 5000 {
            self.grumpy = YES;
            else {
            self.grumpy = NO;
            }
        }

@end
