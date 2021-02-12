//
//  Bachelor.m
//  Lesson_04
//
//  Created by admin on 10.02.2021.
//

#import "Bachelor.h"

@implementation Bachelor

- (NSString *) description {
    return [NSString stringWithFormat: @"%@ (%@) - %ld", self.fullName, self.specialization, (long)self.age];
}

@end
