//
//  Flock.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Flock.h"

@implementation Flock

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create Flock");
    }
    return self;
}

-(void)createWithBirds:(NSArray *)birds {
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Add new Bird-%@ to Flock", bird.number);
    }
}

- (void)remove {
    NSLog(@"Remove Bird from Flock");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc Flock");
    [super dealloc];
}

@end
