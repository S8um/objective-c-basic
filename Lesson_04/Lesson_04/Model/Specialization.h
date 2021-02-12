//
//  Specialization.h
//  Lesson_04
//
//  Created by admin on 10.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum SpecializationType {
    SpecializationTypeMathematics,
    SpecializationTypePhysics,
    SpecializationTypeChemistry
};

typedef enum SpecializationType SpecializationType;

@interface Specialization : NSObject

@property (strong, nonatomic) NSString *code;
@property (strong, nonatomic) NSString *name;
@property (nonatomic) SpecializationType type;

- (void)print;

@end

NS_ASSUME_NONNULL_END
