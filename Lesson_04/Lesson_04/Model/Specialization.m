//
//  Specialization.m
//  Lesson_04
//
//  Created by admin on 10.02.2021.
//

#import "Specialization.h"

@implementation Specialization


- (void)print {
    NSLog(@"\nКод - %@\nНазвание - %@\nТип - %@",
          self.code, self.name, [self typeNameFrom:self.type]);
}

- (NSString *)typeNameFrom:(SpecializationType)type {
    switch (type) {
        case SpecializationTypePhysics:
            return @"Физика";
            break;
        case SpecializationTypeChemistry:
            return @"Химия";
            break;
        case SpecializationTypeMathematics:
            return @"Математика";
            break;
    }
}

@end
