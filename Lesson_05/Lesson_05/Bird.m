//
//  Bird.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create Bird");
    }
    return self;
}

- (void)createBirdWithWings:(NSArray *)wings andTail:(Tail *) tail andNumber:(NSNumber *)number {
    [tail retain];
    [tail release];
    _tail = tail;
    NSLog(@"Add tail for Bird-%@", number);
    
    [wings retain];
    [wings release];
    _wings = wings;
    for (Wing *wing in wings) {
        NSLog(@"Add Wing-%@ for Bird-%@", wing.number, number);
    }
    
    [number retain];
    [number release];
    _number = number;
    NSLog(@"Add Bird-%@", _number);
}

- (void)remove {
    NSLog(@"Remove tail and wings from Bird-%@", _number);
    for (Wing *wing in _wings) {
        [wing release];
    }
    [_wings release];
    [_tail release];
    [_number release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc Bird-%@", _number);
    [super dealloc];
}

@end
