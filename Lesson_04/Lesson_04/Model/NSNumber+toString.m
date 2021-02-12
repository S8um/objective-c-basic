//
//  NSNumber+toString.m
//  Lesson_04
//
//  Created by admin on 10.02.2021.
//

#import "NSNumber+toString.h"

@implementation NSNumber (toString)

- (NSString *)toString {
    return [NSString stringWithFormat:@"%@", self];
}

@end
