//
//  LPGViewController.m
//  Phonagotchi
//
//  Created by Steven Masuch on 2014-07-26.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPGViewController.h"
#import "Pet.h"

@interface LPGViewController ()

@property (nonatomic) UIImageView *petImageView;
@property (nonatomic) Pet *pet;
@property (weak, nonatomic) IBOutlet UIImageView *appleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *basketImageView;

@end

@implementation LPGViewController


- (void)viewDidLoad
{
   
    
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor colorWithRed:(252.0/255.0) green:(240.0/255.0) blue:(228.0/255.0) alpha:1.0];
    
    self.petImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.petImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.petImageView.image = [UIImage imageNamed:@"default"];
    
    [self.view addSubview:self.petImageView];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.petImageView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.petImageView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    self.pet = [[Pet alloc] initPet];
    
//    
//    self.basketImageView = [[UIImageView alloc ] initWithFrame:CGRectZero];
      self.basketImageView.image = [UIImage imageNamed:@"bucket.png"];
      self.basketImageView.translatesAutoresizingMaskIntoConstraints = NO;
   
      [self.view addSubview:self.basketImageView];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.basketImageView
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0
                                                           constant:-38.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.basketImageView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:55.0]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.basketImageView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:55]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.basketImageView
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:55]];
    
    
//    self.basketImageView = [[UIImageView alloc ] initWithFrame:CGRectZero];
    
    self.appleImageView.image = [UIImage imageNamed:@"apple.png"];
    self.appleImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.appleImageView];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.appleImageView
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:35.0]];
    
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.appleImageView
                                                          attribute:NSLayoutAttributeRight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeRight
                                                         multiplier:1.0
                                                           constant:-38.0]];
    
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.appleImageView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:55.0]];
    
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.appleImageView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:55.0]];
    

    
    
    
    
   }

- (IBAction)petPan:(UIPanGestureRecognizer *)sender {
   
      [self.pet petVelocity:[sender velocityInView:self.view]];
    
  //  [self.pet petvelocity : [sender velocityInView:self.view]];
    
}




@end
