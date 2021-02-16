//
//  Tail.m
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import "Tail.h"

@implementation Tail

- (instancetype)initWithModel:(NSString *)type {
    self = [super init];
    if (self) {
        [type retain];
        [type release];
        self.type = type;
        NSLog(@"Type of Tail - %@", type);
    }
    return  self;
}

- (void)dealloc {
    NSLog(@"Dealloc Tail - %@", self.type);
    [self.type retain];
    [self.type release];
    [super dealloc];
}

@end
